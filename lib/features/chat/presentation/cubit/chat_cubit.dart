import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/features/chat/domain/entities/chat_entity.dart';
import 'package:steve_ai/features/chat/domain/entities/message_entity.dart';
import 'package:steve_ai/features/chat/domain/usecases/send_message_llama_use_case.dart';
import 'package:steve_ai/features/chat/domain/usecases/send_message_open_ai_use_case.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_state.dart';
import 'package:intl/intl.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this.sendMessageLlamaUseCase, this.sendMessageOpenAiUseCase)
      : super(
          const ChatState.init(),
        );

  final ScrollController controller = ScrollController();

  final SendMessageLlamaUseCase sendMessageLlamaUseCase;
  final SendMessageOpenAiUseCase sendMessageOpenAiUseCase;

  Future<void> initState(ChatEntity? chatEntity) async {
    emit(ChatState.init(
      chatEntity: chatEntity,
      typeModel: state.typeModel,
    ));
  }

  void selectTypeModel({required int type}) {
    emit(
      ChatState.init(
        needUpdate: !state.needUpdate,
        chatEntity: ChatEntity(
          name: 'Steve AI',
          longMemory: '''You are Steve, best friend for communication.''',
          messages: [],
        ),
        typeModel: type,
      ),
    );
  }

  void openLongMemory() {
    emit(
      ChatState.longMemory(
        needUpdate: state.needUpdate,
        chatEntity: state.chatEntity,
        typeModel: state.typeModel,
      ),
    );
  }

  void changeLongMemory(String text) {
    emit(
      ChatState.init(
          needUpdate: state.needUpdate,
          typeModel: state.typeModel,
          chatEntity: state.chatEntity!.copyWith(longMemory: text)),
    );
  }

  List<MessageEntity> getTempMessages() {
    List<MessageEntity> tempMessages = [];

    for (var element in state.chatEntity?.messages ?? []) {
      tempMessages.add(element);
    }
    return tempMessages;
  }

  String getTimeForMessage() {
    final dateTime = DateTime.parse(
        DateTime.now().toString().replaceFirst(RegExp(r'-\d\d:\d\d'), ''));

    final format = DateFormat('HH:mm a');
    final clockString = format.format(dateTime);
    return clockString;
  }

  void sendMessage(
      {required String systemPrompt, required String message}) async {
    List<MessageEntity> tempMessages = getTempMessages();
    String clockString = getTimeForMessage();

    tempMessages.addAll([
      MessageEntity(
        text: message,
        type: '0',
        dateTime: clockString,
      ),
      MessageEntity(
        text: '',
        type: '1',
        dateTime: clockString,
      )
    ]);

    emit(
      ChatState.createNewMessage(
        typeModel: state.typeModel,
        needUpdate: !state.needUpdate,
        chatEntity: state.chatEntity?.copyWith(messages: tempMessages),
      ),
    );

    Timer(const Duration(milliseconds: 300), () {
      controller.jumpTo(controller.position.maxScrollExtent);
    });

    if (state.typeModel == 0) {
      await sendMessageByLlama(systemPrompt, message);
    } else {
      await sendMessageByOpenAi(
        systemPrompt,
        message,
      );
    }
  }

  Future<void> sendMessageByOpenAi(String systemPrompt, String message) async {
    var res = await sendMessageOpenAiUseCase.call(SendMessageOpenAiParams(
      systemPrompt: systemPrompt,
      message: message,
      messages: state.chatEntity?.messages ?? [],
    ));

    res.fold((l) {
      log('Error Open AI Cubit ${l.message}');
    }, (r) async {
      r.listen((event) {
        final content = event.choices.first.delta.content;

        checkForDivider(content?.last?.text ?? '');
      });
    });
  }

  Future<void> sendMessageByLlama(String systemPrompt, String message) async {
    var res = await sendMessageLlamaUseCase.call(SendMessageLlamaParams(
      systemPrompt: systemPrompt,
      message: message,
    ));

    res.fold((l) {
      log('Error LLama Cubit ${l.message}');
    }, (r) async {
      r.listen((event) {
        var tempText = utf8.decode(event);
        checkForDivider(tempText);
      });
    });
  }

  void checkForDivider(
    String value,
  ) {
    // log(tempText);
    if (value.contains('/')) {
      var clean = cleanForDivider(value);
      addNewMessageOrUpdate(clean, true);
    } else {
      addNewMessageOrUpdate(value, false);
    }
  }

  String cleanForDivider(String tempText) {
    String finalText = '';

    int index = tempText.indexOf("/");

    if (index != -1) {
      finalText = tempText.substring(index + 1);
    } else {
      finalText = tempText;
    }

    return finalText;
  }

  String deleteSpace(String text) {
    if (text.startsWith(' ')) {
      text = text.substring(1);
      return text;
    } else {
      return text;
    }
  }

  String deleteNonLetter(String text) {
    int i = 0;
    while (i < text.length && !RegExp(r'[a-zA-Zа-яА-Я]').hasMatch(text[i])) {
      i++;
    }
    return text.substring(i);
  }

  void addNewMessageOrUpdate(
    String text,
    bool isNew,
  ) async {
    List<MessageEntity> tempMessages = [];

    for (var message in state.chatEntity?.messages ?? []) {
      tempMessages.add(message);
    }

    final dateTime = DateTime.parse(
        DateTime.now().toString().replaceFirst(RegExp(r'-\d\d:\d\d'), ''));

    final format = DateFormat('HH:mm a');
    final clockString = format.format(dateTime);

    if (isNew == true && tempMessages.last.text != '') {
      tempMessages.add(MessageEntity(
        text: '',
        type: '1',
        dateTime: clockString,
      ));

      emit(
        ChatState.createNewMessage(
          typeModel: state.typeModel,
          needUpdate: !state.needUpdate,
          chatEntity: state.chatEntity?.copyWith(messages: tempMessages),
        ),
      );
    } else {
      var refreshText = deleteNonLetter(tempMessages.last.text + text);
      tempMessages.last = MessageEntity(
        text: refreshText,
        type: '1',
        dateTime: tempMessages.last.dateTime,
      );
    }

    controller.jumpTo(controller.position.maxScrollExtent);

    emit(
      ChatState.init(
          typeModel: state.typeModel,
          needUpdate: !state.needUpdate,
          chatEntity: state.chatEntity?.copyWith(messages: tempMessages)),
    );
  }
}

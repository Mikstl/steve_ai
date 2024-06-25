import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:steve_ai/features/chat/domain/entities/message_entity.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:steve_ai/features/chat/presentation/widgets/messages_list_view/chat_image_message.dart';
import 'package:steve_ai/features/chat/presentation/widgets/messages_list_view/chat_image_text_message.dart';
import 'package:steve_ai/features/chat/presentation/widgets/messages_list_view/chat_message.dart';

class ChatMessagesListView extends StatelessWidget {
  const ChatMessagesListView(
      {super.key, required this.messages, required this.loading});

  final List<MessageEntity> messages;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    ChatCubit chatCubit = context.read<ChatCubit>();
    final colorScheme = Theme.of(context).colorScheme;

    return ListView.builder(
      itemCount: messages.length,
      shrinkWrap: true,
      controller: chatCubit.controller,
      itemBuilder: (context, index) {
        if (index + 1 == messages.length && loading) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 15, right: 15, bottom: 8),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    border: Border.all(
                        width: 1,
                        color: colorScheme.onSecondary.withOpacity(0.25)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 38, 38, 38)
                            .withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: LoadingAnimationWidget.prograssiveDots(
                      color: colorScheme.background,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          );
        }
        if (messages[index].imageURL != '' &&
            messages[index].text == '' &&
            messages[index].title == '') {
          return Padding(
            padding:
                EdgeInsets.only(bottom: messages.length - 1 == index ? 15 : 0),
            child: GestureDetector(
              onTap: () {},
              child: ChatImageMessage(
                image: messages[index].imageURL,
                time: messages[index].dateTime,
              ),
            ),
          );
        } else if (messages[index].imageURL != '' &&
            (messages[index].text != '' || messages[index].title != '')) {
          return Padding(
            padding:
                EdgeInsets.only(bottom: messages.length - 1 == index ? 15 : 0),
            child: GestureDetector(
              onTap: () {},
              child: ChatImageTextMessage(
                image: messages[index].imageURL,
                title: messages[index].title,
                text: messages[index].text,
                time: messages[index].dateTime,
                isEven: (index % 2 == 0) ? true : false,
              ),
            ),
          );
        } else {
          return Container(
            alignment: messages[index].type == '1'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            padding:
                EdgeInsets.only(bottom: messages.length - 1 == index ? 15 : 0),
            child: GestureDetector(
              onTap: () {},
              child: ChatMessage(
                title: messages[index].title,
                text: messages[index].text,
                time: messages[index].dateTime,
                type: messages[index].type,
              ),
            ),
          );
        }
      },
    );
  }
}

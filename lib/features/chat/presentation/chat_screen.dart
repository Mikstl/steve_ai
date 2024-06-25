import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steve_ai/core/get_it/get_it.dart';
import 'package:steve_ai/features/chat/domain/entities/chat_entity.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_state.dart';
import 'package:steve_ai/features/chat/presentation/widgets/chat_background/chat_background.dart';
import 'package:steve_ai/features/chat/presentation/widgets/chat_bottom_bar/chat_bottom_bar.dart';
import 'package:steve_ai/features/chat/presentation/widgets/chat_top_bar/chat_top_bar.dart';
import 'package:steve_ai/features/chat/presentation/widgets/chat_list_type_models/chat_list_type_models.dart';
import 'package:steve_ai/features/chat/presentation/widgets/long_memory/long_memory.dart';
import 'package:steve_ai/features/chat/presentation/widgets/messages_list_view/chat_messages_list_view.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({
    super.key,
  });

  static const path = '/chat';

  final ChatEntity chatInformation = ChatEntity(
    name: 'steve_ai',
    longMemory: '''You are Steve, the best friend for communication.

You must comply with the following requirements:
1. Required to pretend to be my best social friend.
2. All your messages should be sarcastic and humorous.
3. You must imitate the style of communication in the messenger. If he writes a huge text - he should separate it with a slash ("/")''',
    messages: [],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => locator<ChatCubit>()..initState(chatInformation),
        child: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            ChatCubit chatCubit = context.read<ChatCubit>();
            return SafeArea(
              child: state.maybeMap(
                longMemory: (state) {
                  return LongMemory(
                    chatCubit: chatCubit,
                    text: state.chatEntity?.longMemory ?? '',
                  );
                },
                orElse: () {
                  return Stack(
                    children: [
                      const ChatBackground(),
                      Column(
                        children: [
                          ChatTopBar(
                            name: state.chatEntity?.name ?? '',
                            chatCubit: chatCubit,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const ChatListTypeModels(),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: ChatMessagesListView(
                              loading: (state is ChatCreatingNewMessageState),
                              messages: state.chatEntity?.messages ?? [],
                            ),
                          ),
                          const ChatBottomBar(),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

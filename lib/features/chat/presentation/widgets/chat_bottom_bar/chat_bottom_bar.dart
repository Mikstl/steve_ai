import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';
import 'package:steve_ai/core/utils/responsive_util.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_state.dart';
import 'package:steve_ai/features/chat/presentation/widgets/chat_bottom_bar/chat_text_field.dart';

class ChatBottomBar extends StatefulWidget {
  const ChatBottomBar({super.key});

  @override
  State<ChatBottomBar> createState() => _ChatBottomBarState();
}

class _ChatBottomBarState extends State<ChatBottomBar> {
  bool isShowTitle = false;

  final TextEditingController chatTitleController = TextEditingController();
  final TextEditingController chatTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: colorScheme.background,
      child: Column(
        children: [
          // Container(
          //   height: 1,
          //   width: size.width,
          //   color: colorScheme.surface,
          // ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 21,
                  child: SvgPicture.asset(
                    clipIcon,
                    colorFilter:
                        ColorFilter.mode(colorScheme.primary, BlendMode.srcIn),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ResponsiveUtil.isWeb(context) && kIsWeb
                    ? SizedBox(
                        width: 650,
                        child: ChatTextField(
                          chatTextController: chatTextController,
                          chatTitleController: chatTitleController,
                        ),
                      )
                    : Expanded(
                        child: ChatTextField(
                          chatTextController: chatTextController,
                          chatTitleController: chatTitleController,
                        ),
                      ),
                const SizedBox(
                  width: 10,
                ),
                BlocBuilder<ChatCubit, ChatState>(builder: (context, state) {
                  ChatCubit chatCubit = context.read<ChatCubit>();

                  return GestureDetector(
                    onTap: () {
                      chatCubit.sendMessage(
                          systemPrompt: state.chatEntity?.longMemory ?? '',
                          message:
                              '${chatTitleController.text}${chatTextController.text}');

                      setState(() {
                        chatTextController.text = '';
                        chatTitleController.text = '';
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: colorScheme.primary),
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: colorScheme.onPrimary,
                        size: 20,
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

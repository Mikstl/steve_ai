import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_state.dart';
import 'package:steve_ai/features/chat/presentation/widgets/attention_change/attention_change_dialog.dart';

class ChatListTypeModels extends StatelessWidget {
  const ChatListTypeModels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<ChatCubit, ChatState>(builder: (context, state) {
      ChatCubit chatCubit = context.read<ChatCubit>();

      return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  if (state.chatEntity!.messages.isNotEmpty) {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return AttentionChangeDialog(
                          type: 0,
                          chatCubit: chatCubit,
                        );
                      },
                    );
                  } else {
                    chatCubit.selectTypeModel(type: 0);
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.45),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    color: state.typeModel == 0
                        ? colorScheme.surface
                        : colorScheme.surface.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          llamaIcon,
                          colorFilter: ColorFilter.mode(
                              state.typeModel == 0
                                  ? colorScheme.primary
                                  : colorScheme.primary.withOpacity(0.3),
                              BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Llama 3',
                        textAlign: TextAlign.center,
                        style: textTheme.headlineMedium!.copyWith(
                          color: state.typeModel == 0
                              ? colorScheme.primary
                              : colorScheme.primary.withOpacity(0.3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  if (state.chatEntity!.messages.isNotEmpty) {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return AttentionChangeDialog(
                          type: 1,
                          chatCubit: chatCubit,
                        );
                      },
                    );
                  } else {
                    chatCubit.selectTypeModel(type: 1);
                  }
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.45),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    color: state.typeModel == 1
                        ? colorScheme.surface
                        : colorScheme.surface.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          chatGPTIcon,
                          colorFilter: ColorFilter.mode(
                              state.typeModel == 1
                                  ? colorScheme.primary
                                  : colorScheme.primary.withOpacity(0.3),
                              BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'ChatGPT-4o',
                        textAlign: TextAlign.center,
                        style: textTheme.headlineMedium!.copyWith(
                          color: state.typeModel == 1
                              ? colorScheme.primary
                              : colorScheme.primary.withOpacity(0.3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

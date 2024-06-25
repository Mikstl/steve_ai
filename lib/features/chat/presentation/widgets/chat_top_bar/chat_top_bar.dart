import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';

class ChatTopBar extends StatelessWidget {
  const ChatTopBar({super.key, required this.name, required this.chatCubit});

  final String name;
  final ChatCubit chatCubit;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 13, right: 15, left: 15),
      // color: colorScheme.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 10,
            width: 50,
          )
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 11,
          //       height: 21,
          //       child: SvgPicture.asset(
          //         backArrowIcon,
          //         colorFilter:
          //             ColorFilter.mode(colorScheme.primary, BlendMode.srcIn),
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 8,
          //     ),
          //     Text(
          //       'Назад',
          //       textAlign: TextAlign.center,
          //       style: textTheme.headlineLarge!.copyWith(
          //         color: colorScheme.primary,
          //         fontWeight: FontWeight.w400,
          //       ),
          //     ),
          //   ],
          // )
          ,
          Expanded(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: textTheme.titleSmall!.copyWith(
                color: colorScheme.onSecondary,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              chatCubit.openLongMemory();
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.surface,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  brainIcon,
                  colorFilter:
                      ColorFilter.mode(colorScheme.primary, BlendMode.srcIn),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

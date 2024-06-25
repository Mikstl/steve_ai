import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';

class ChatLongMemoryBar extends StatelessWidget {
  const ChatLongMemoryBar(
      {super.key, required this.text, required this.chatCubit});
  final String text;
  final ChatCubit chatCubit;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        chatCubit.openLongMemory();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.45),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 17,
                    width: 17,
                    child: SvgPicture.asset(
                      brainIcon,
                      colorFilter: ColorFilter.mode(
                          colorScheme.primary, BlendMode.srcIn),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Долгая память',
                    textAlign: TextAlign.center,
                    style: textTheme.headlineMedium!.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium!.copyWith(
                  color: colorScheme.onSecondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Container(
            //   height: 1,
            //   width: size.width,
            //   color: colorScheme.surface,
            // )
          ],
        ),
      ),
    );
  }
}

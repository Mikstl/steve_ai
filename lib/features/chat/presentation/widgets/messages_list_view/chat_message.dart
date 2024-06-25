import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steve_ai/core/utils/responsive_util.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_state.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    Key? key,
    required this.text,
    required this.time,
    required this.title,
    required this.type,
  }) : super(key: key);

  final String title;
  final String text;
  final String time;
  final String type;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    final textSpan = TextSpan(
      text: text,
      style: textTheme.displaySmall,
    );
    final textPainter = TextPainter(
        text: textSpan, maxLines: 1, textDirection: TextDirection.ltr);
    textPainter.layout(
        maxWidth: MediaQuery.of(context).size.width - 32); // 32 is for padding
    // final isMultiLine = textPainter.didExceedMaxLines;

    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) => SizedBox(
        width: ResponsiveUtil.isWeb(context) && kIsWeb
            ? size.width * 0.55
            : size.width * 0.8,
        child: text == ''
            ? const SizedBox()
            : Column(
                crossAxisAlignment: type == '0'
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 2, left: 10, right: 10, bottom: 2),

                      // Adjust padding as needed
                      decoration: BoxDecoration(
                        color: type == '0'
                            ? colorScheme.background
                            : colorScheme.primary,
                        // Background color of the message container
                        borderRadius: const BorderRadius.only(
                          //  topRight: Radius.circular(isMultiLine ? 15 : 30),
                          // bottomLeft: Radius.circular(isMultiLine ? 15 : 30),
                          // bottomRight: Radius.circular(isMultiLine ? 15 : 30),
                          // topLeft: Radius.circular(isMultiLine ? 15 : 30),
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
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),

                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (title != '')
                                  Text(
                                    title,
                                    textAlign: TextAlign.left,
                                    style: textTheme.headlineLarge!.copyWith(
                                        // fontWeight: FontWeight.w700,
                                        color: type == '0'
                                            ? colorScheme.onSecondary
                                            : colorScheme.onPrimary),
                                  ),
                                if (title != '')
                                  const SizedBox(
                                    height: 3,
                                  ),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      //real message
                                      TextSpan(
                                        text: "$text  ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w400,
                                                color: type == '0'
                                                    ? colorScheme.onSecondary
                                                    : colorScheme.onPrimary),
                                      ),

                                      //fake additionalInfo as placeholder
                                      TextSpan(
                                        text: time,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                color: type == '0'
                                                    ? colorScheme.background
                                                    : colorScheme.primary),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //real additionalInfo
                          Positioned(
                            right: 5.0,
                            bottom: 4.0,
                            child: Text(
                              time,
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: type == '0'
                                      ? colorScheme.outline
                                      : colorScheme.surface
                                  // colorScheme.onPrimary
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

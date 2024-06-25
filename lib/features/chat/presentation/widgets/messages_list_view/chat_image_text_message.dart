import 'package:flutter/material.dart';

class ChatImageTextMessage extends StatelessWidget {
  const ChatImageTextMessage(
      {Key? key,
      required this.time,
      required this.image,
      required this.title,
      required this.text,
      required this.isEven})
      : super(key: key);

  final String title;
  final String text;
  final String time;
  final String image;

  final bool isEven;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: isEven ? colorScheme.onPrimary : colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 35.0,
                        maxHeight: 220.0,
                        maxWidth: 300,
                      ),
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(image)),
                    ),
                    if (title != '')
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 10, right: 10),
                        child: Text(
                          title,
                          textAlign: TextAlign.left,
                          style: textTheme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: isEven
                                  ? colorScheme.onSecondary
                                  : colorScheme.onPrimary),
                        ),
                      ),
                    if (title != '')
                      const SizedBox(
                        height: 3,
                      ),
                    SizedBox(
                      width: 270,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: title != '' ? 0 : 5,
                            left: 10,
                            right: 10,
                            bottom: 10),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              //real message
                              TextSpan(
                                text: "$text  ",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        color: isEven
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
                                        color: isEven
                                            ? colorScheme.onPrimary
                                            : colorScheme.primary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15.0,
                bottom: 6.0,
                child: Text(
                  time,
                  style: TextStyle(
                      fontSize: 10.0,
                      color:
                          isEven ? colorScheme.outline : colorScheme.onPrimary),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

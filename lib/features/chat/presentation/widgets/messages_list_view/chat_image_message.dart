import 'package:flutter/material.dart';

class ChatImageMessage extends StatelessWidget {
  const ChatImageMessage({Key? key, required this.time, required this.image})
      : super(key: key);

  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
          child: Stack(
            children: <Widget>[
              ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 35.0,
                    maxHeight: 200.0,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(image))),
              Positioned(
                right: 5.0,
                bottom: 4.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
                    child: Text(
                      time,
                      style: TextStyle(
                          fontSize: 10.0, color: colorScheme.onPrimary),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

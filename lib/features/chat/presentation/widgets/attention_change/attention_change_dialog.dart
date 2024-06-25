import 'package:flutter/material.dart';
import 'package:steve_ai/core/global_widgets/custom_button/custom_button.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';

class AttentionChangeDialog extends StatefulWidget {
  const AttentionChangeDialog({
    Key? key,
    required this.chatCubit,
    required this.type,
  }) : super(key: key);

  final ChatCubit chatCubit;
  final int type;

  @override
  State<AttentionChangeDialog> createState() => _AttentionChangeDialogState();
}

class _AttentionChangeDialogState extends State<AttentionChangeDialog> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      elevation: 0,
      backgroundColor: colorScheme.onPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
        width: size.width * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.close,
                    size: 25,
                    color: colorScheme.primary,
                  ),
                ),
              ),
            ),
            Text(
              'Attention!',
              textAlign: TextAlign.center,
              style: textTheme.displayLarge!.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'You have started a dialogue; if you change the model, it will be lost, do you want to continue? \n\n Llama still has some memory left on the server, ask me to update if necessary',
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium!.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: 100,
                  onTap: () {
                    setState(() {
                      widget.chatCubit.selectTypeModel(type: widget.type);
                      Navigator.pop(context);
                    });
                  },
                  text: 'Yes',
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomButton(
                  width: 100,
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  text: 'No',
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}

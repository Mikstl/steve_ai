import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';
import 'package:steve_ai/core/global_widgets/custom_button/custom_button.dart';
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart';

class LongMemory extends StatefulWidget {
  const LongMemory({super.key, required this.chatCubit, required this.text});

  final ChatCubit chatCubit;
  final String text;

  @override
  State<LongMemory> createState() => _LongMemoryState();
}

class _LongMemoryState extends State<LongMemory> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: size.height * 0.02),
          Row(
            children: [
              SizedBox(
                width: 11,
                height: 21,
                child: SvgPicture.asset(
                  backArrowIcon,
                  colorFilter:
                      ColorFilter.mode(colorScheme.primary, BlendMode.srcIn),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.chatCubit.changeLongMemory(controller.text);
                  });
                },
                child: Text(
                  'Назад',
                  textAlign: TextAlign.center,
                  style: textTheme.headlineLarge!.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          SizedBox(
            width: size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(
                    brainIcon,
                    colorFilter:
                        ColorFilter.mode(colorScheme.primary, BlendMode.srcIn),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Долгая память',
                  textAlign: TextAlign.center,
                  style: textTheme.headlineLarge!.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            width: size.width * 0.9,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.003, horizontal: size.width * 0.03),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.circular(
                15,
              ),
              boxShadow: [
                colorScheme.brightness == Brightness.dark
                    ? const BoxShadow(
                        blurRadius: 20,
                        color: Color.fromARGB(66, 255, 255, 255),
                        offset: Offset(0, 0.5),
                      )
                    : const BoxShadow(
                        blurRadius: 3,
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                      ),
              ],
            ),
            child: TextFormField(
              minLines: 5,
              maxLines: 24,
              maxLength: 2000,
              controller: controller,
              style: textTheme.displayLarge!.copyWith(),
              decoration: InputDecoration(
                counterStyle: TextStyle(color: colorScheme.primary),
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                label: Text(widget.text,
                    style: textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: colorScheme.primary,
                    )),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              showCursor: true,
            ),
          ),
          SizedBox(height: size.height * 0.04),
          CustomButton(
            width: 160,
            onTap: () {
              setState(() {
                widget.chatCubit.changeLongMemory(controller.text);
              });
            },
            text: 'Save',
          ),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}

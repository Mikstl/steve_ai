import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

enum StatusButton { wait, loading, success }

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    this.width,
    required this.onTap,
    required this.text,
    this.color,
    this.maxLines,
    this.isGradient,
    this.isNotActive,
    this.colorBackground,
    this.status,
    this.isAsyncButton,
    this.borderColor,
  }) : super(key: key);

  final double? width;
  final Function()? onTap;
  final String text;
  final Color? color;
  final Color? borderColor;

  final Color? colorBackground;
  final int? maxLines;
  final bool? isGradient;
  final bool? isNotActive;
  final StatusButton? status;
  final bool? isAsyncButton;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  // double _width = 100;
  // double _height = 50;
  // final double _expansionFactor = 0.01;

  // void _animateButton() {
  //   // Increase size
  //   setState(() {
  //     _width = _width * (1 + _expansionFactor);
  //     _height = _height * (1 + _expansionFactor);
  //   });

  //   // Wait for a moment and then decrease size back to normal
  //   Future.delayed(const Duration(milliseconds: 100), () {
  //     setState(() {
  //       _width = 100;
  //       _height = 50;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        // height: _height,
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
          color: widget.isNotActive == true
              ? colorScheme.secondaryContainer
              : widget.colorBackground ?? colorScheme.surface,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Center(
          child: widget.isAsyncButton == true
              ? Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: (widget.status == StatusButton.wait) ? 1 : 0,
                      child: Text(
                        widget.text,
                        style: textTheme.headlineLarge!.copyWith(
                            color: widget.isNotActive == true
                                ? colorScheme.surface
                                : widget.color ?? colorScheme.onSecondary),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: (widget.status == StatusButton.loading) ? 1 : 0,
                      child: Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: (widget.status == StatusButton.loading)
                              ? CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: colorScheme.outline,
                                )
                              : const SizedBox(),
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: (widget.status == StatusButton.success) ? 1 : 0,
                      child: Center(
                        child: Icon(
                          Icons.done,
                          color: colorScheme.outline,
                        ),
                      ),
                    ),
                  ],
                )
              : AutoSizeText(
                  widget.text,
                  maxLines: widget.maxLines,
                  style: textTheme.headlineLarge!.copyWith(
                      color: widget.isNotActive == true
                          ? colorScheme.surface
                          : widget.color ?? colorScheme.onSecondary),
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}

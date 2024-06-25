import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField(
      {super.key,
      required this.chatTextController,
      required this.chatTitleController});

  final TextEditingController chatTitleController;
  final TextEditingController chatTextController;

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  bool isShowTitle = false;

  final ScrollController _scrollTextController = ScrollController();
  final ScrollController _scrollTitleController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          isShowTitle ? 15 : 10,
        ),
        border: Border.all(width: 1, color: colorScheme.primary),
      ),
      child: Column(
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: Container(
              height: isShowTitle ? null : 0.0,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      // readOnly: widget.readOnly == true ? true : false,
                      // enableInteractiveSelection:
                      //     widget.readOnly == true ? false : true,
                      // initialValue: widget.initialValue,
                      controller: widget.chatTextController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      minLines: 1, // Minimum lines when the text field is empty
                      scrollPadding: EdgeInsets.zero,
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.center,
                      scrollController: _scrollTitleController,

                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      onChanged: (text) {},
                      style: textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: colorScheme.onSecondary),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        counterText: '',
                        contentPadding: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          right: 5,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        label: Text(
                          'Type title..',
                          style: textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.w300,
                            color: colorScheme.outline,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                      showCursor: true,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: isShowTitle ? 1 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isShowTitle = false;
                        });
                      },
                      child: SizedBox(
                        height: 22,
                        child: SvgPicture.asset(
                          arrowBottomTitleIcon,
                          colorFilter: ColorFilter.mode(
                              colorScheme.primary, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: isShowTitle ? 1 : 0,
            child: Container(
              height: 1,
              width: size.width,
              color: colorScheme.surface,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    // readOnly: widget.readOnly == true ? true : false,
                    // enableInteractiveSelection:
                    //     widget.readOnly == true ? false : true,
                    // initialValue: widget.initialValue,
                    controller: widget.chatTitleController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 8,
                    minLines: 1, // Minimum lines when the text field is empty
                    scrollPadding: EdgeInsets.zero,
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    scrollController: _scrollTextController,

                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    onChanged: (text) {},
                    style: textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: colorScheme.onSecondary),
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      counterText: '',
                      contentPadding: const EdgeInsets.only(
                        top: 5,
                        bottom: 7,
                        right: 5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      label: Text(
                        'Type text..',
                        style: textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.w300,
                          color: colorScheme.primary,
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    showCursor: true,
                  ),
                ),
                // AnimatedOpacity(
                //   opacity: isShowTitle ? 0 : 1,
                //   duration: const Duration(milliseconds: 300),
                //   child: GestureDetector(
                //     onTap: () {
                //       setState(() {
                //         isShowTitle = true;
                //       });
                //     },
                //     child: SizedBox(
                //       height: 22,
                //       child: SvgPicture.asset(
                //         arrowTopTitleIcon,
                //         colorFilter: ColorFilter.mode(
                //             colorScheme.primary, BlendMode.srcIn),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

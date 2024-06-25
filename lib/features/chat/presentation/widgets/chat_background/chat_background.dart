import 'dart:ui';

import 'package:flutter/material.dart';

class ChatBackground extends StatelessWidget {
  const ChatBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final colorScheme = Theme.of(context).colorScheme;

    // Defining proportions relative to screen size
    // List<Map<String, dynamic>> shapes = [
    //   {
    //     'position': Offset(size.width * 0.02, size.height * 0.01),
    //     'size': Size(size.width * 0.6, size.width * 0.6)
    //   },
    //   {
    //     'position': Offset(size.width * 0.7, size.height * 0.04),
    //     'size': Size(size.width * 0.13, size.width * 0.13)
    //   },
    //   {
    //     'position': Offset(size.width * 0.0875, size.height * 0.32),
    //     'size': Size(size.width * 0.15, size.width * 0.15)
    //   },
    //   {
    //     'position': Offset(size.width * 0.45, size.height * 0.33),
    //     'size': Size(size.width * 0.55, size.width * 0.55)
    //   },
    //   {
    //     'position': Offset(size.width * 0.18, size.height * 0.58),
    //     'size': Size(size.width * 0.075, size.width * 0.075)
    //   },
    //   {
    //     'position': Offset(size.width * 0.34, size.height * 0.6),
    //     'size': Size(size.width * 0.13, size.width * 0.13)
    //   },
    //   {
    //     'position': Offset(size.width * 0.55, size.height * 0.6),
    //     'size': Size(size.width * 0.375, size.width * 0.375)
    //   },
    //   {
    //     'position': Offset(size.width * 0, size.height * 0.65),
    //     'size': Size(size.width * 0.3, size.width * 0.3)
    //   },
    // ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: size.width,
          height: size.height,
          color: const Color(0xff434343).withOpacity(0.05),
          // child: Stack(
          //   children: <Widget>[
          //     ...shapes.map(
          //       (shape) => Positioned(
          //         left: shape['position'].dx,
          //         top: shape['position'].dy,
          //         child: Container(
          //           width: shape['size'].width,
          //           height: shape['size'].height,
          //           decoration: const BoxDecoration(
          //             shape: BoxShape.circle,
          //             gradient: LinearGradient(
          //               colors: [
          //                 Color.fromARGB(255, 27, 27, 27),
          //                 Color.fromARGB(255, 56, 56, 56)
          //               ],
          //               begin: Alignment.topLeft,
          //               end: Alignment.bottomRight,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

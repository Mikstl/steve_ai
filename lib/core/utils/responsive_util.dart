import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveUtil {
  static Size size(context) {
    return MediaQuery.of(context).size;
  }

  // for understand orientation

  static bool isPortrait(context) {
    return size(context).width < size(context).height;
  }

  static bool isLandscape(context) {
    return size(context).width > size(context).height;
  }

  static double width(context) {
    return size(context).width;
  }

  static double height(context) {
    return size(context).height;
  }

  // for top bar

  static double countHeightTopBar(context) {
    return kIsWeb || isTablet(context) ? 26 : 4;
  }

  static double countHorizontalPadding(context) {
    return width(context) < 500 ? 15 : 20;
  }

  // for platform

  static bool isWeb(context) {
    return width(context) > 1300;
  }

  static bool isTablet(context) {
    return width(context) > 500 && width(context) < 1300;
  }

  static bool isMobile(context) {
    return width(context) < 500;
  }

  static bool isSmallMobile(context) {
    return width(context) < 376;
  }
}

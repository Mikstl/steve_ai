import 'package:flutter/material.dart';

const lightThemeName = 'light_theme';
const darkThemeName = 'dark_theme';

final themes = {
  lightThemeName: _generateTheme(
    const ColorScheme(
      //main color
      primary: Color.fromARGB(255, 214, 214, 214),
      // background
      background: Color(0xff010101),
      // text color main
      onPrimary: Color(0xff202020),
      // text second color main
      onSecondary: Color(0xffFFFFFF),
      // background widgets
      surface: Color(0xff2c2c2e),
      // disable color
      outline: Color(0xff8F8F8F),
      // second color
      secondary: Color(0xffD71921),

      // second gradient background
      tertiary: Color.fromARGB(255, 166, 20, 223),

      error: Color(0xffEC2E2E),
      primaryContainer: Color(0xffDCDCDC),
      secondaryContainer: Color(0xffEEEDED),
      onBackground: Color(0xffFEFCF1),
      onError: Color(0xffFFCCCC),
      onSurface: Color(0xffFF9243),
      brightness: Brightness.light,
    ),
  ),
  darkThemeName: _generateTheme(
    const ColorScheme(
      onPrimary: Color(0xff002D12),
      outline: Color(0xFFFFFFFF),
      primary: Color(0xff01845D),
      primaryContainer: Color(0xFF155B46),
      secondary: Color(0xff939393),
      secondaryContainer: Color(0xffEEEDED),
      onSecondary: Color(0xffFFCD4D),
      background: Color(0xffF1FEF2),
      onBackground: Color(0xffFEFCF1),
      error: Color(0xffEC2E2E),
      onError: Color(0xffFFCCCC),
      surface: Color(0xffFFCD4D),
      onSurface: Color(0xffFF9243),
      tertiary: Color(0xffB2EEDC),
      brightness: Brightness.dark,
    ),
  ),
};

ThemeData _generateTheme(ColorScheme colorScheme) {
  final splashColor = colorScheme.primary.withOpacity(0.2);

  return ThemeData(
      useMaterial3: true,
      primaryColor: colorScheme.primary,
      primaryColorLight: colorScheme.primaryContainer,
      disabledColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      hintColor: colorScheme.primary.withOpacity(0.8),

      // ColorScheme
      colorScheme: colorScheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: InkRipple.splashFactory,
      splashColor: splashColor,
      highlightColor: Colors.transparent,

      // Text theme
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 44,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        //
        headlineLarge: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        //
        bodyLarge: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        //
        displayLarge: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onSecondary,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),

      //Icon theme
      iconTheme: IconThemeData(color: colorScheme.primary),
      scrollbarTheme: ScrollbarThemeData(
          thickness: MaterialStateProperty.all(2),
          thumbColor: MaterialStateProperty.all(colorScheme.onPrimary),
          radius: const Radius.circular(2),
          minThumbLength: 10)
      // InputDecoration theme
      );
}

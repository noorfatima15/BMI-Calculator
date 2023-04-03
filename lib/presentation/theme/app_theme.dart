import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorPalette.primaryColor,
      secondary: ColorPalette.secondaryColor,
    ),
    scaffoldBackgroundColor: ColorPalette.primaryHeader,
    iconTheme: const IconThemeData(
      color: ColorPalette.activeCardColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.primaryHeader,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: labelStyle.copyWith(color: ColorPalette.activeCardColor),
      iconTheme: const IconThemeData(
        color: ColorPalette.activeCardColor,
      ),
    ),
    splashColor: ColorPalette.secondarySplashColor,
    splashFactory: InkRipple.splashFactory,
    //add textColor
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: ColorPalette.primaryColor,
      secondary: ColorPalette.secondaryColor,
    ),
    scaffoldBackgroundColor: ColorPalette.primaryColor,
    iconTheme: const IconThemeData(color: ColorPalette.primaryHeader),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.primaryColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: labelStyle.copyWith(
        color: ColorPalette.primaryHeader,
      ),
      iconTheme: const IconThemeData(
        color: ColorPalette.primaryHeader,
      ),
    ),
  );
}

import 'package:bmi_calculator/constants/colors.dart';
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
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorPalette.primaryHeader,
      elevation: 0,
      iconTheme: IconThemeData(
        color: ColorPalette.activeCardColor,
      ),
    ),
    //add textColor
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: ColorPalette.primaryColor,
      secondary: ColorPalette.secondaryColor,
    ),
    scaffoldBackgroundColor: ColorPalette.primaryColor,
    iconTheme: const IconThemeData(color: ColorPalette.primaryHeader),
  );
}

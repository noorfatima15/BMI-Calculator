import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorPalette.primaryColor,
      secondary: ColorPalette.secondaryColor,
    ),
    scaffoldBackgroundColor: ColorPalette.primaryColor,
  );
}

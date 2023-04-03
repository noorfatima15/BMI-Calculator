import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:bmi_calculator/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextRich extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TextRich({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return RichText(
            text: TextSpan(
                text: firstText,
                style: numberStyle.copyWith(color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.secondaryColor),
                children: [
              TextSpan(
                  text: secondText,
                  style: cardSubLabelStyle.copyWith(color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.secondaryColor))
            ]));
      },
    );
  }
}

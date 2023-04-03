import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const PrimaryButton({Key? key, required this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: MediaQuery.of(context).size.width,
      color: ColorPalette.secondaryColor,
      height: 60.0,
      child: Text(title, style: primaryButtonStyle),
    );
  }
}

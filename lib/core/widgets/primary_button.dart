import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: MediaQuery.of(context).size.width,
      color: ColorPalette.secondaryColor,
      height: 60.0,
      child: const Text('Calculate', style: primaryButtonStyle),
    );
  }
}

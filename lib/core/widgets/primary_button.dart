import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: MaterialButton(
        onPressed: () {},
        minWidth: MediaQuery.of(context).size.width,
        color: const Color(0xFFEB1555),
        height: 60.0,
        child: const Text('Calculate', style: primaryButtonStyle),
      ),
    );
  }
}

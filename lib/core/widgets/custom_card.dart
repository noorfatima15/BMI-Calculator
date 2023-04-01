import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  const CustomCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: ColorPalette.activeCardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    ));
  }
}

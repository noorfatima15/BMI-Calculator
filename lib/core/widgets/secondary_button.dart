import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const SecondaryButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorPalette.secondaryButtonColor,
        boxShadow: [
          BoxShadow(
            color: ColorPalette.primaryHeader.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}

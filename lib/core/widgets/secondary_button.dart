import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondaryButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const SecondaryButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: state.isDarkMode ? ColorPalette.secondaryButtonColor : ColorPalette.primaryHeader,
            boxShadow: [
              BoxShadow(
                color: state.isDarkMode ? ColorPalette.primaryHeader.withOpacity(0.1) : ColorPalette.secondaryButtonColor.withOpacity(0.2),
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
      },
    );
  }
}

import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const CustomCard({Key? key, required this.child, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? (state.isDarkMode ? ColorPalette.activeCardColor : ColorPalette.primaryHeader),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: !state.isDarkMode
                ? [
                    BoxShadow(
                      color: ColorPalette.activeCardColor.withOpacity(0.2),
                      offset: const Offset(0, 10),
                      blurRadius: 20.0,
                    ),
                  ]
                : null,
          ),
          child: child,
        );
      },
    ));
  }
}

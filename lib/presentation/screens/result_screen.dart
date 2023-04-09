import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:bmi_calculator/core/widgets/custom_card.dart';
import 'package:bmi_calculator/core/widgets/primary_button.dart';
import 'package:bmi_calculator/presentation/application/bmi_bloc.dart';
import 'package:bmi_calculator/presentation/screens/home_screen.dart';
import 'package:bmi_calculator/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<BmiBloc, BmiState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text('Your Result',
                        style: resultHeader.copyWith(color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.activeCardColor)),
                  ),
                  CustomCard(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(state.resultType, style: headerStyle.copyWith(color: ColorPalette.resultTypeColor)),
                      Text(state.bmiResult.toStringAsFixed(2),
                          style: resultBmi.copyWith(color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.secondaryColor)),
                      Text(state.resultMessage,
                          style: labelStyle.copyWith(color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.primaryColor),
                          textAlign: TextAlign.center),
                    ],
                  )),
                  PrimaryButton(
                      title: 'RE-CALCULATE',
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => false);
                      }),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

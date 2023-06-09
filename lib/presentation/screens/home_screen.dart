import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/logic_constants.dart';
import 'package:bmi_calculator/constants/strings.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:bmi_calculator/core/widgets/custom_card.dart';
import 'package:bmi_calculator/core/widgets/custom_snackbar.dart';
import 'package:bmi_calculator/core/widgets/primary_button.dart';
import 'package:bmi_calculator/core/widgets/secondary_button.dart';
import 'package:bmi_calculator/core/widgets/text_rich.dart';
import 'package:bmi_calculator/presentation/application/bmi_bloc.dart';
import 'package:bmi_calculator/presentation/screens/result_screen.dart';
import 'package:bmi_calculator/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return BlocBuilder<BmiBloc, BmiState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(actions: [
                const Icon(FontAwesomeIcons.lightbulb, size: 15),
                Switch(
                    value: themeState.isDarkMode,
                    onChanged: (value) {
                      context.read<ThemeBloc>().add(OnChangeTheme(isDarkMode: value));
                    })
              ]),
              body: Column(
                children: [
                  Row(
                    children: [
                      CustomCard(
                        backgroundColor: themeState.isDarkMode
                            ? (state.gender == Gender.male ? ColorPalette.activeCardColor : ColorPalette.inactiveCardColor)
                            : (!(themeState.isDarkMode) && state.gender == Gender.male)
                                ? ColorPalette.secondaryButtonColor.withOpacity(0.1)
                                : ColorPalette.primaryHeader,
                        child: GestureDetector(
                          onTap: () {
                            context.read<BmiBloc>().add(OnGenderChange(gender: Gender.male));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(FontAwesomeIcons.mars, size: 80.0),
                              Text('MALE',
                                  style: cardMainLabelStyle.copyWith(
                                      color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.secondaryColor))
                            ],
                          ),
                        ),
                      ),
                      CustomCard(
                          backgroundColor: themeState.isDarkMode
                              ? (state.gender == Gender.female ? ColorPalette.activeCardColor : ColorPalette.inactiveCardColor)
                              : (!(themeState.isDarkMode) && state.gender == Gender.female)
                                  ? ColorPalette.secondaryButtonColor.withOpacity(0.1)
                                  : ColorPalette.primaryHeader,
                          child: GestureDetector(
                            onTap: () {
                              context.read<BmiBloc>().add(OnGenderChange(gender: Gender.female));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(FontAwesomeIcons.venus, size: 80),
                                Text('FEMALE',
                                    style: cardMainLabelStyle.copyWith(
                                        color: themeState.isDarkMode ? ColorPalette.primaryHeader : ColorPalette.secondaryColor))
                              ],
                            ),
                          )),
                    ],
                  ),
                  CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text('HEIGHT', style: cardSubLabelStyle),
                        TextRich(firstText: '${state.height}', secondText: 'cm'),
                        Expanded(
                          child: Slider(
                            value: state.height.toDouble(),
                            min: 12,
                            max: 144,
                            activeColor: themeState.isDarkMode ? ColorPalette.secondaryColor : ColorPalette.activeCardColor,
                            inactiveColor: themeState.isDarkMode ? ColorPalette.secondaryButtonColor : ColorPalette.secondaryColor,
                            onChanged: (value) {
                              context.read<BmiBloc>().add(OnHeightChange(height: value.toInt()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CustomCard(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(Strings.weight, style: cardSubLabelStyle),
                          TextRich(firstText: '${state.weight}', secondText: 'kg'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SecondaryButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  if (state.weight > 1) {
                                    context.read<BmiBloc>().add(OnWeightChange(weight: state.weight - 1));
                                  } else {
                                    CustomSnackBar.showSnackBar(context: context, message: Strings.weightAlertMessage);
                                  }
                                },
                              ),
                              SecondaryButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  context.read<BmiBloc>().add(OnWeightChange(weight: state.weight + 1));
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                      CustomCard(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('AGE', style: cardSubLabelStyle),
                          TextRich(firstText: '${state.age}', secondText: 'yrs'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SecondaryButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  if (state.age > 1) {
                                    context.read<BmiBloc>().add(OnAgeChange(age: state.age - 1));
                                  } else {
                                    CustomSnackBar.showSnackBar(context: context, message: Strings.ageAlertMessage);
                                  }
                                },
                              ),
                              SecondaryButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  context.read<BmiBloc>().add(OnAgeChange(age: state.age + 1));
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  PrimaryButton(
                    title: 'CALCULATE',
                    onPressed: () {
                      if (state.gender != null) {
                        context.read<BmiBloc>().add(OnCalculateBmi());
                        Future.delayed(
                          const Duration(milliseconds: 1),
                          () {
                            return Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
                          },
                        );
                      } else {
                        CustomSnackBar.showSnackBar(context: context, message: Strings.genderAlertMessage);
                      }
                    },
                  ),
                  // ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

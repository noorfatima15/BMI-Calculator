import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:bmi_calculator/core/widgets/custom_card.dart';
import 'package:bmi_calculator/core/widgets/primary_button.dart';
import 'package:bmi_calculator/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(
            FontAwesomeIcons.lightbulb,
            size: 15,
          ),
          Switch(
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CustomCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    Text('MALE', style: cardMainLabelStyle),
                  ],
                ),
              ),
              CustomCard(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Icon(FontAwesomeIcons.venus, size: 80), Text('FEMALE', style: cardMainLabelStyle)],
              )),
            ],
          ),
          CustomCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('HEIGHT', style: cardSubLabelStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    const Text('180', style: numberStyle),
                    Text(
                      'cm',
                      style: cardSubLabelStyle.copyWith(color: ColorPalette.primaryHeader),
                    )
                  ],
                ),
                Slider(
                  value: 180,
                  min: 120,
                  max: 220,
                  activeColor: ColorPalette.secondaryColor,
                  inactiveColor: ColorPalette.secondaryButtonColor,
                  onChanged: (value) {},
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
                  const Text('WEIGHT', style: cardSubLabelStyle),
                  const Text('60', style: numberStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondaryButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {},
                      ),
                      SecondaryButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {},
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
                  const Text('20', style: numberStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondaryButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {},
                      ),
                      SecondaryButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
          const PrimaryButton(),
        ],
      ),
    );
  }
}

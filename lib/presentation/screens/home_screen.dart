import 'package:bmi_calculator/core/widgets/custom_card.dart';
import 'package:bmi_calculator/core/widgets/primary_button.dart';
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.mars),
                    Text('Male'),
                  ],
                ),
              ),
              CustomCard(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(FontAwesomeIcons.venus), Text('Female')],
              )),
            ],
          ),
          CustomCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height'),
                Row(
                  children: [
                    Text('180'),
                    Text('cm'),
                  ],
                ),
                Slider(
                  value: 180,
                  min: 120,
                  max: 220,
                  onChanged: (value) {},
                )
              ],
            ),
          ),
          Row(
            children: [
              CustomCard(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Weight'),
                  Text('60'),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.remove),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              )),
              CustomCard(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Age'),
                  Text('20'),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.remove),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
          PrimaryButton(),
        ],
      ),
    );
  }
}

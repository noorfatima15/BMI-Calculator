import 'package:bmi_calculator/core/widgets/custom_container.dart';
import 'package:bmi_calculator/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              CustomCard(),
              CustomCard(),
            ],
          ),
          CustomCard(),
          Row(
            children: [
              CustomCard(),
              CustomCard(),
            ],
          ),
          PrimaryButton(),
        ],
      ),
    );
  }
}

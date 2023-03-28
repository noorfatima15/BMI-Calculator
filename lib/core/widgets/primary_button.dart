import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: const Text('Calculate'),
      minWidth: MediaQuery.of(context).size.width,
      color: const Color(0xFFEB1555),
    );
  }
}

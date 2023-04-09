import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/images.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:bmi_calculator/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.inactiveCardColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text('BMI Calculator', style: resultHeader.copyWith(color: ColorPalette.secondaryColor)),
            Lottie.asset(Images.splashAnimation),
            Lottie.asset(Images.loaderAnimation),
          ],
        ),
      ),
    );
  }
}

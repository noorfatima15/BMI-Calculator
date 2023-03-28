import 'package:bmi_calculator/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/splash_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
    );
  }
}

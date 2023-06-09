import 'package:bmi_calculator/presentation/application/bmi_bloc.dart';
import 'package:bmi_calculator/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/screens/splash_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => BmiBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            home: const SplashScreen(),
            debugShowCheckedModeBanner: false,
            theme: state.themeData,
            themeMode: state.themeMode,
          );
        },
      ),
    );
  }
}

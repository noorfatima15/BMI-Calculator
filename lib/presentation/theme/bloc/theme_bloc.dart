import 'package:bmi_calculator/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<OnChangeTheme>((event, emit) => onChangeTheme(event, emit));
  }

  onChangeTheme(OnChangeTheme event, Emitter<ThemeState> emit) {
    emit(state.copyWith(
      isDarkMode: event.isDarkMode,
      themeData: event.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      themeMode: event.isDarkMode ? ThemeMode.dark : ThemeMode.light,
    ));
  }
}

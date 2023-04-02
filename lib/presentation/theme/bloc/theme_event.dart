part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class OnChangeTheme extends ThemeEvent {
  final bool isDarkMode;
  OnChangeTheme({required this.isDarkMode});
}

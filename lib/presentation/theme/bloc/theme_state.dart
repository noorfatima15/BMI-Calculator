part of 'theme_bloc.dart';

class ThemeState {
  final ThemeData themeData;
  final ThemeMode themeMode;
  final bool isDarkMode;
  ThemeState({required this.themeData, required this.themeMode, required this.isDarkMode});

  factory ThemeState.initial() => ThemeState(
        themeData: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        isDarkMode: false,
      );

  ThemeState copyWith({
    ThemeData? themeData,
    ThemeMode? themeMode,
    bool? isDarkMode,
  }) {
    return ThemeState(
      themeData: themeData ?? this.themeData,
      themeMode: themeMode ?? this.themeMode,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}

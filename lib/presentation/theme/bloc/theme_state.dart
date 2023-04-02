part of 'theme_bloc.dart';

class ThemeState {
  final ThemeData themeData;
  final ThemeMode themeMode;

  ThemeState({required this.themeData, required this.themeMode});

  factory ThemeState.initial() => ThemeState(
        themeData: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
      );

  ThemeState copyWith({
    ThemeData? themeData,
    ThemeMode? themeMode,
  }) {
    return ThemeState(
      themeData: themeData ?? this.themeData,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}

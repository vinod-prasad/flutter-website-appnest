import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData lightTheme = ThemeData(
  // brightness: Brightness.light,
  // primarySwatch: Colors.deepOrange,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
      primary: LightThemeColors.primary,
      onPrimary: LightThemeColors.onPrimary,
      secondary: LightThemeColors.secondary,
      onSecondary: LightThemeColors.onSecondary,
      error: LightThemeColors.error,
      onError: LightThemeColors.onError,
      surface: LightThemeColors.surface,
      onSurface: LightThemeColors.onSurface,
    )
);

final ThemeData darkTheme = ThemeData(
  // brightness: Brightness.dark,
  // primarySwatch: Colors.blue,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.grey,
        brightness: Brightness.light,
        primary: DarkThemeColors.primary,
        onPrimary: DarkThemeColors.onPrimary,
        secondary: DarkThemeColors.secondary,
        onSecondary: DarkThemeColors.onSecondary,
        error: DarkThemeColors.error,
        onError: DarkThemeColors.onError,
        surface: DarkThemeColors.surface,
        onSurface: DarkThemeColors.onSurface
    )
);

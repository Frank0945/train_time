import 'package:flutter/material.dart';

class ThemeState {
  final ThemeMode themeMode;
  final MaterialColor seedColor;

  const ThemeState({required this.themeMode, required this.seedColor});

  ThemeState copyWith({
    ThemeMode? themeMode,
    MaterialColor? seedColor,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
      seedColor: seedColor ?? this.seedColor,
    );
  }
}

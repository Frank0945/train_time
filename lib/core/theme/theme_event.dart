import 'package:flutter/material.dart';

abstract class ThemeEvent {}

class LoadTheme extends ThemeEvent {}

class UpdateTheme extends ThemeEvent {
  final ThemeMode? themeMode;
  final MaterialColor? seedColor;

  UpdateTheme({this.themeMode, this.seedColor});
}

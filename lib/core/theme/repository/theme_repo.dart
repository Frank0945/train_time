import 'package:flutter/material.dart';
import 'package:train_time/core/storage/shared_preferences_service.dart';
import 'package:train_time/core/theme/constants/theme_constants.dart';
import 'package:train_time/core/theme/keys/theme_keys.dart';
import 'package:train_time/core/theme/colors/colors.dart';

class ThemeRepo {
  final SharedPreferencesService prefs;

  ThemeRepo(this.prefs);

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    await prefs.setString(ThemeKeys.themeMode, themeMode.toString());
  }

  Future<void> saveSeedColor(MaterialColor seedColor) async {
    final seedColorStr =
        colorMap.entries.firstWhere((e) => e.value == seedColor).key;
    await prefs.setString(ThemeKeys.seedColor, seedColorStr);
  }

  ThemeMode loadThemeMode() {
    final themeModeStr = prefs.getString(ThemeKeys.themeMode);
    return ThemeMode.values.firstWhere(
      (e) => e.toString() == themeModeStr,
      orElse: () => defaultThemeMode,
    );
  }

  MaterialColor loadSeedColor() {
    final seedColorStr = prefs.getString(ThemeKeys.seedColor);
    return colorMap[seedColorStr] ?? defaultSeedColor;
  }
}

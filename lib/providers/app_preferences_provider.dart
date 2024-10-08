import 'package:flutter/material.dart';
import 'package:flutter_skeleton_application_improved/models/app_preferences_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_preferences.g.dart';

@riverpod
class AppPreferences extends _$AppPreferences {
  @override
  AppPreferencesModel build() {
    final AppPreferencesModel appPreferences = AppPreferencesModel(themeMode: ThemeMode.system);
    return appPreferences;
  }

  void toggleThemeMode(ThemeMode newThemeMode) async {

    final AppPreferencesModel newAppPreferences = AppPreferencesModel(themeMode: newThemeMode);
    debugPrint("Toggled theme mode to: ${newAppPreferences.themeMode.toString()}");
    state = newAppPreferences;
  }
}
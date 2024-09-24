
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_preferences_model.freezed.dart';
part 'app_preferences_model.g.dart';

@freezed
class AppPreferencesModel with _$AppPreferencesModel {
  factory AppPreferencesModel({
    required ThemeMode themeMode,
  }) = _AppPreferencesModel;
	
  factory AppPreferencesModel.fromJson(Map<String, dynamic> json) =>
			_$AppPreferencesModelFromJson(json);
}

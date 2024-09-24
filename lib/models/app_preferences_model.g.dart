// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppPreferencesModelImpl _$$AppPreferencesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppPreferencesModelImpl(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$$AppPreferencesModelImplToJson(
        _$AppPreferencesModelImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

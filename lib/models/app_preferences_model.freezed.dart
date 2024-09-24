// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppPreferencesModel _$AppPreferencesModelFromJson(Map<String, dynamic> json) {
  return _AppPreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$AppPreferencesModel {
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  /// Serializes this AppPreferencesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPreferencesModelCopyWith<AppPreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPreferencesModelCopyWith<$Res> {
  factory $AppPreferencesModelCopyWith(
          AppPreferencesModel value, $Res Function(AppPreferencesModel) then) =
      _$AppPreferencesModelCopyWithImpl<$Res, AppPreferencesModel>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$AppPreferencesModelCopyWithImpl<$Res, $Val extends AppPreferencesModel>
    implements $AppPreferencesModelCopyWith<$Res> {
  _$AppPreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppPreferencesModelImplCopyWith<$Res>
    implements $AppPreferencesModelCopyWith<$Res> {
  factory _$$AppPreferencesModelImplCopyWith(_$AppPreferencesModelImpl value,
          $Res Function(_$AppPreferencesModelImpl) then) =
      __$$AppPreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$AppPreferencesModelImplCopyWithImpl<$Res>
    extends _$AppPreferencesModelCopyWithImpl<$Res, _$AppPreferencesModelImpl>
    implements _$$AppPreferencesModelImplCopyWith<$Res> {
  __$$AppPreferencesModelImplCopyWithImpl(_$AppPreferencesModelImpl _value,
      $Res Function(_$AppPreferencesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$AppPreferencesModelImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppPreferencesModelImpl implements _AppPreferencesModel {
  _$AppPreferencesModelImpl({required this.themeMode});

  factory _$AppPreferencesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppPreferencesModelImplFromJson(json);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppPreferencesModel(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPreferencesModelImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of AppPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPreferencesModelImplCopyWith<_$AppPreferencesModelImpl> get copyWith =>
      __$$AppPreferencesModelImplCopyWithImpl<_$AppPreferencesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppPreferencesModelImplToJson(
      this,
    );
  }
}

abstract class _AppPreferencesModel implements AppPreferencesModel {
  factory _AppPreferencesModel({required final ThemeMode themeMode}) =
      _$AppPreferencesModelImpl;

  factory _AppPreferencesModel.fromJson(Map<String, dynamic> json) =
      _$AppPreferencesModelImpl.fromJson;

  @override
  ThemeMode get themeMode;

  /// Create a copy of AppPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPreferencesModelImplCopyWith<_$AppPreferencesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

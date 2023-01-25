// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppTheme {
  AppColorTheme get colorTheme => throw _privateConstructorUsedError;
  AppTextTheme get textTheme => throw _privateConstructorUsedError;
  AppInputTheme get inputTheme => throw _privateConstructorUsedError;
  AppButtonTheme get buttonTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res, AppTheme>;
  @useResult
  $Res call(
      {AppColorTheme colorTheme,
      AppTextTheme textTheme,
      AppInputTheme inputTheme,
      AppButtonTheme buttonTheme});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res, $Val extends AppTheme>
    implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorTheme = null,
    Object? textTheme = null,
    Object? inputTheme = null,
    Object? buttonTheme = null,
  }) {
    return _then(_value.copyWith(
      colorTheme: null == colorTheme
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as AppColorTheme,
      textTheme: null == textTheme
          ? _value.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
      inputTheme: null == inputTheme
          ? _value.inputTheme
          : inputTheme // ignore: cast_nullable_to_non_nullable
              as AppInputTheme,
      buttonTheme: null == buttonTheme
          ? _value.buttonTheme
          : buttonTheme // ignore: cast_nullable_to_non_nullable
              as AppButtonTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppThemeCopyWith<$Res> implements $AppThemeCopyWith<$Res> {
  factory _$$_AppThemeCopyWith(
          _$_AppTheme value, $Res Function(_$_AppTheme) then) =
      __$$_AppThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppColorTheme colorTheme,
      AppTextTheme textTheme,
      AppInputTheme inputTheme,
      AppButtonTheme buttonTheme});
}

/// @nodoc
class __$$_AppThemeCopyWithImpl<$Res>
    extends _$AppThemeCopyWithImpl<$Res, _$_AppTheme>
    implements _$$_AppThemeCopyWith<$Res> {
  __$$_AppThemeCopyWithImpl(
      _$_AppTheme _value, $Res Function(_$_AppTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorTheme = null,
    Object? textTheme = null,
    Object? inputTheme = null,
    Object? buttonTheme = null,
  }) {
    return _then(_$_AppTheme(
      colorTheme: null == colorTheme
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as AppColorTheme,
      textTheme: null == textTheme
          ? _value.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
      inputTheme: null == inputTheme
          ? _value.inputTheme
          : inputTheme // ignore: cast_nullable_to_non_nullable
              as AppInputTheme,
      buttonTheme: null == buttonTheme
          ? _value.buttonTheme
          : buttonTheme // ignore: cast_nullable_to_non_nullable
              as AppButtonTheme,
    ));
  }
}

/// @nodoc

class _$_AppTheme implements _AppTheme {
  const _$_AppTheme(
      {required this.colorTheme,
      required this.textTheme,
      required this.inputTheme,
      required this.buttonTheme});

  @override
  final AppColorTheme colorTheme;
  @override
  final AppTextTheme textTheme;
  @override
  final AppInputTheme inputTheme;
  @override
  final AppButtonTheme buttonTheme;

  @override
  String toString() {
    return 'AppTheme(colorTheme: $colorTheme, textTheme: $textTheme, inputTheme: $inputTheme, buttonTheme: $buttonTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTheme &&
            (identical(other.colorTheme, colorTheme) ||
                other.colorTheme == colorTheme) &&
            (identical(other.textTheme, textTheme) ||
                other.textTheme == textTheme) &&
            (identical(other.inputTheme, inputTheme) ||
                other.inputTheme == inputTheme) &&
            (identical(other.buttonTheme, buttonTheme) ||
                other.buttonTheme == buttonTheme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, colorTheme, textTheme, inputTheme, buttonTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppThemeCopyWith<_$_AppTheme> get copyWith =>
      __$$_AppThemeCopyWithImpl<_$_AppTheme>(this, _$identity);
}

abstract class _AppTheme implements AppTheme {
  const factory _AppTheme(
      {required final AppColorTheme colorTheme,
      required final AppTextTheme textTheme,
      required final AppInputTheme inputTheme,
      required final AppButtonTheme buttonTheme}) = _$_AppTheme;

  @override
  AppColorTheme get colorTheme;
  @override
  AppTextTheme get textTheme;
  @override
  AppInputTheme get inputTheme;
  @override
  AppButtonTheme get buttonTheme;
  @override
  @JsonKey(ignore: true)
  _$$_AppThemeCopyWith<_$_AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

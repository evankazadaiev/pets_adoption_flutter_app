// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_anthropometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetAnthropometry _$PetAnthropometryFromJson(Map<String, dynamic> json) {
  return _PetAnthropometry.fromJson(json);
}

/// @nodoc
mixin _$PetAnthropometry {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetAnthropometryCopyWith<PetAnthropometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetAnthropometryCopyWith<$Res> {
  factory $PetAnthropometryCopyWith(
          PetAnthropometry value, $Res Function(PetAnthropometry) then) =
      _$PetAnthropometryCopyWithImpl<$Res, PetAnthropometry>;
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class _$PetAnthropometryCopyWithImpl<$Res, $Val extends PetAnthropometry>
    implements $PetAnthropometryCopyWith<$Res> {
  _$PetAnthropometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetAnthropometryCopyWith<$Res>
    implements $PetAnthropometryCopyWith<$Res> {
  factory _$$_PetAnthropometryCopyWith(
          _$_PetAnthropometry value, $Res Function(_$_PetAnthropometry) then) =
      __$$_PetAnthropometryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class __$$_PetAnthropometryCopyWithImpl<$Res>
    extends _$PetAnthropometryCopyWithImpl<$Res, _$_PetAnthropometry>
    implements _$$_PetAnthropometryCopyWith<$Res> {
  __$$_PetAnthropometryCopyWithImpl(
      _$_PetAnthropometry _value, $Res Function(_$_PetAnthropometry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$_PetAnthropometry(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetAnthropometry implements _PetAnthropometry {
  const _$_PetAnthropometry({required this.label, required this.value});

  factory _$_PetAnthropometry.fromJson(Map<String, dynamic> json) =>
      _$$_PetAnthropometryFromJson(json);

  @override
  final String label;
  @override
  final String value;

  @override
  String toString() {
    return 'PetAnthropometry(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetAnthropometry &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetAnthropometryCopyWith<_$_PetAnthropometry> get copyWith =>
      __$$_PetAnthropometryCopyWithImpl<_$_PetAnthropometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetAnthropometryToJson(
      this,
    );
  }
}

abstract class _PetAnthropometry implements PetAnthropometry {
  const factory _PetAnthropometry(
      {required final String label,
      required final String value}) = _$_PetAnthropometry;

  factory _PetAnthropometry.fromJson(Map<String, dynamic> json) =
      _$_PetAnthropometry.fromJson;

  @override
  String get label;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_PetAnthropometryCopyWith<_$_PetAnthropometry> get copyWith =>
      throw _privateConstructorUsedError;
}

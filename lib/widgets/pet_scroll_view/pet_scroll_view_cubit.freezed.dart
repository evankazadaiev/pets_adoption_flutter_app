// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet_scroll_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetScrollViewState {
  bool get isButtonShown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetScrollViewStateCopyWith<PetScrollViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetScrollViewStateCopyWith<$Res> {
  factory $PetScrollViewStateCopyWith(
          PetScrollViewState value, $Res Function(PetScrollViewState) then) =
      _$PetScrollViewStateCopyWithImpl<$Res>;
  $Res call({bool isButtonShown});
}

/// @nodoc
class _$PetScrollViewStateCopyWithImpl<$Res>
    implements $PetScrollViewStateCopyWith<$Res> {
  _$PetScrollViewStateCopyWithImpl(this._value, this._then);

  final PetScrollViewState _value;
  // ignore: unused_field
  final $Res Function(PetScrollViewState) _then;

  @override
  $Res call({
    Object? isButtonShown = freezed,
  }) {
    return _then(_value.copyWith(
      isButtonShown: isButtonShown == freezed
          ? _value.isButtonShown
          : isButtonShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PetScrollViewStateCopyWith<$Res>
    implements $PetScrollViewStateCopyWith<$Res> {
  factory _$$_PetScrollViewStateCopyWith(_$_PetScrollViewState value,
          $Res Function(_$_PetScrollViewState) then) =
      __$$_PetScrollViewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isButtonShown});
}

/// @nodoc
class __$$_PetScrollViewStateCopyWithImpl<$Res>
    extends _$PetScrollViewStateCopyWithImpl<$Res>
    implements _$$_PetScrollViewStateCopyWith<$Res> {
  __$$_PetScrollViewStateCopyWithImpl(
      _$_PetScrollViewState _value, $Res Function(_$_PetScrollViewState) _then)
      : super(_value, (v) => _then(v as _$_PetScrollViewState));

  @override
  _$_PetScrollViewState get _value => super._value as _$_PetScrollViewState;

  @override
  $Res call({
    Object? isButtonShown = freezed,
  }) {
    return _then(_$_PetScrollViewState(
      isButtonShown: isButtonShown == freezed
          ? _value.isButtonShown
          : isButtonShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PetScrollViewState implements _PetScrollViewState {
  const _$_PetScrollViewState({this.isButtonShown = false});

  @override
  @JsonKey()
  final bool isButtonShown;

  @override
  String toString() {
    return 'PetScrollViewState(isButtonShown: $isButtonShown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetScrollViewState &&
            const DeepCollectionEquality()
                .equals(other.isButtonShown, isButtonShown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isButtonShown));

  @JsonKey(ignore: true)
  @override
  _$$_PetScrollViewStateCopyWith<_$_PetScrollViewState> get copyWith =>
      __$$_PetScrollViewStateCopyWithImpl<_$_PetScrollViewState>(
          this, _$identity);
}

abstract class _PetScrollViewState implements PetScrollViewState {
  const factory _PetScrollViewState({final bool isButtonShown}) =
      _$_PetScrollViewState;

  @override
  bool get isButtonShown;
  @override
  @JsonKey(ignore: true)
  _$$_PetScrollViewStateCopyWith<_$_PetScrollViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

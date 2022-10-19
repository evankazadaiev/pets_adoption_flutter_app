// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pets_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetsState {
  List<PetModel> get pets => throw _privateConstructorUsedError;
  FetchState get fetchState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetsStateCopyWith<PetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetsStateCopyWith<$Res> {
  factory $PetsStateCopyWith(PetsState value, $Res Function(PetsState) then) =
      _$PetsStateCopyWithImpl<$Res>;
  $Res call({List<PetModel> pets, FetchState fetchState});
}

/// @nodoc
class _$PetsStateCopyWithImpl<$Res> implements $PetsStateCopyWith<$Res> {
  _$PetsStateCopyWithImpl(this._value, this._then);

  final PetsState _value;
  // ignore: unused_field
  final $Res Function(PetsState) _then;

  @override
  $Res call({
    Object? pets = freezed,
    Object? fetchState = freezed,
  }) {
    return _then(_value.copyWith(
      pets: pets == freezed
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      fetchState: fetchState == freezed
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ));
  }
}

/// @nodoc
abstract class _$$_PetsStateCopyWith<$Res> implements $PetsStateCopyWith<$Res> {
  factory _$$_PetsStateCopyWith(
          _$_PetsState value, $Res Function(_$_PetsState) then) =
      __$$_PetsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PetModel> pets, FetchState fetchState});
}

/// @nodoc
class __$$_PetsStateCopyWithImpl<$Res> extends _$PetsStateCopyWithImpl<$Res>
    implements _$$_PetsStateCopyWith<$Res> {
  __$$_PetsStateCopyWithImpl(
      _$_PetsState _value, $Res Function(_$_PetsState) _then)
      : super(_value, (v) => _then(v as _$_PetsState));

  @override
  _$_PetsState get _value => super._value as _$_PetsState;

  @override
  $Res call({
    Object? pets = freezed,
    Object? fetchState = freezed,
  }) {
    return _then(_$_PetsState(
      pets: pets == freezed
          ? _value._pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      fetchState: fetchState == freezed
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ));
  }
}

/// @nodoc

class _$_PetsState implements _PetsState {
  const _$_PetsState(
      {final List<PetModel> pets = const <PetModel>[],
      this.fetchState = FetchState.initial})
      : _pets = pets;

  final List<PetModel> _pets;
  @override
  @JsonKey()
  List<PetModel> get pets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pets);
  }

  @override
  @JsonKey()
  final FetchState fetchState;

  @override
  String toString() {
    return 'PetsState(pets: $pets, fetchState: $fetchState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetsState &&
            const DeepCollectionEquality().equals(other._pets, _pets) &&
            const DeepCollectionEquality()
                .equals(other.fetchState, fetchState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pets),
      const DeepCollectionEquality().hash(fetchState));

  @JsonKey(ignore: true)
  @override
  _$$_PetsStateCopyWith<_$_PetsState> get copyWith =>
      __$$_PetsStateCopyWithImpl<_$_PetsState>(this, _$identity);
}

abstract class _PetsState implements PetsState {
  const factory _PetsState(
      {final List<PetModel> pets, final FetchState fetchState}) = _$_PetsState;

  @override
  List<PetModel> get pets;
  @override
  FetchState get fetchState;
  @override
  @JsonKey(ignore: true)
  _$$_PetsStateCopyWith<_$_PetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

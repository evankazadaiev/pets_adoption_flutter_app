// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchScreenState {
  PlaceLocation? get userGeolocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res>;
  $Res call({PlaceLocation? userGeolocation});

  $PlaceLocationCopyWith<$Res>? get userGeolocation;
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  final SearchScreenState _value;
  // ignore: unused_field
  final $Res Function(SearchScreenState) _then;

  @override
  $Res call({
    Object? userGeolocation = freezed,
  }) {
    return _then(_value.copyWith(
      userGeolocation: userGeolocation == freezed
          ? _value.userGeolocation
          : userGeolocation // ignore: cast_nullable_to_non_nullable
              as PlaceLocation?,
    ));
  }

  @override
  $PlaceLocationCopyWith<$Res>? get userGeolocation {
    if (_value.userGeolocation == null) {
      return null;
    }

    return $PlaceLocationCopyWith<$Res>(_value.userGeolocation!, (value) {
      return _then(_value.copyWith(userGeolocation: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchScreenStateCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$$_SearchScreenStateCopyWith(_$_SearchScreenState value,
          $Res Function(_$_SearchScreenState) then) =
      __$$_SearchScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({PlaceLocation? userGeolocation});

  @override
  $PlaceLocationCopyWith<$Res>? get userGeolocation;
}

/// @nodoc
class __$$_SearchScreenStateCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements _$$_SearchScreenStateCopyWith<$Res> {
  __$$_SearchScreenStateCopyWithImpl(
      _$_SearchScreenState _value, $Res Function(_$_SearchScreenState) _then)
      : super(_value, (v) => _then(v as _$_SearchScreenState));

  @override
  _$_SearchScreenState get _value => super._value as _$_SearchScreenState;

  @override
  $Res call({
    Object? userGeolocation = freezed,
  }) {
    return _then(_$_SearchScreenState(
      userGeolocation: userGeolocation == freezed
          ? _value.userGeolocation
          : userGeolocation // ignore: cast_nullable_to_non_nullable
              as PlaceLocation?,
    ));
  }
}

/// @nodoc

class _$_SearchScreenState implements _SearchScreenState {
  const _$_SearchScreenState({this.userGeolocation = null});

  @override
  @JsonKey()
  final PlaceLocation? userGeolocation;

  @override
  String toString() {
    return 'SearchScreenState(userGeolocation: $userGeolocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchScreenState &&
            const DeepCollectionEquality()
                .equals(other.userGeolocation, userGeolocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userGeolocation));

  @JsonKey(ignore: true)
  @override
  _$$_SearchScreenStateCopyWith<_$_SearchScreenState> get copyWith =>
      __$$_SearchScreenStateCopyWithImpl<_$_SearchScreenState>(
          this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  const factory _SearchScreenState({final PlaceLocation? userGeolocation}) =
      _$_SearchScreenState;

  @override
  PlaceLocation? get userGeolocation;
  @override
  @JsonKey(ignore: true)
  _$$_SearchScreenStateCopyWith<_$_SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(PetModel petDetails) done,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(PetModel petDetails)? done,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(PetModel petDetails)? done,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PetDetailsStateInitial value) initial,
    required TResult Function(_PetDetailsStateLoading value) processing,
    required TResult Function(_PetDetailsStateLoaded value) done,
    required TResult Function(_PetDetailsStateError value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PetDetailsStateInitial value)? initial,
    TResult? Function(_PetDetailsStateLoading value)? processing,
    TResult? Function(_PetDetailsStateLoaded value)? done,
    TResult? Function(_PetDetailsStateError value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PetDetailsStateInitial value)? initial,
    TResult Function(_PetDetailsStateLoading value)? processing,
    TResult Function(_PetDetailsStateLoaded value)? done,
    TResult Function(_PetDetailsStateError value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDetailsStateCopyWith<$Res> {
  factory $PetDetailsStateCopyWith(
          PetDetailsState value, $Res Function(PetDetailsState) then) =
      _$PetDetailsStateCopyWithImpl<$Res, PetDetailsState>;
}

/// @nodoc
class _$PetDetailsStateCopyWithImpl<$Res, $Val extends PetDetailsState>
    implements $PetDetailsStateCopyWith<$Res> {
  _$PetDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PetDetailsStateInitialCopyWith<$Res> {
  factory _$$_PetDetailsStateInitialCopyWith(_$_PetDetailsStateInitial value,
          $Res Function(_$_PetDetailsStateInitial) then) =
      __$$_PetDetailsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PetDetailsStateInitialCopyWithImpl<$Res>
    extends _$PetDetailsStateCopyWithImpl<$Res, _$_PetDetailsStateInitial>
    implements _$$_PetDetailsStateInitialCopyWith<$Res> {
  __$$_PetDetailsStateInitialCopyWithImpl(_$_PetDetailsStateInitial _value,
      $Res Function(_$_PetDetailsStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PetDetailsStateInitial implements _PetDetailsStateInitial {
  const _$_PetDetailsStateInitial();

  @override
  String toString() {
    return 'PetDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetDetailsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(PetModel petDetails) done,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(PetModel petDetails)? done,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(PetModel petDetails)? done,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PetDetailsStateInitial value) initial,
    required TResult Function(_PetDetailsStateLoading value) processing,
    required TResult Function(_PetDetailsStateLoaded value) done,
    required TResult Function(_PetDetailsStateError value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PetDetailsStateInitial value)? initial,
    TResult? Function(_PetDetailsStateLoading value)? processing,
    TResult? Function(_PetDetailsStateLoaded value)? done,
    TResult? Function(_PetDetailsStateError value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PetDetailsStateInitial value)? initial,
    TResult Function(_PetDetailsStateLoading value)? processing,
    TResult Function(_PetDetailsStateLoaded value)? done,
    TResult Function(_PetDetailsStateError value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PetDetailsStateInitial implements PetDetailsState {
  const factory _PetDetailsStateInitial() = _$_PetDetailsStateInitial;
}

/// @nodoc
abstract class _$$_PetDetailsStateLoadingCopyWith<$Res> {
  factory _$$_PetDetailsStateLoadingCopyWith(_$_PetDetailsStateLoading value,
          $Res Function(_$_PetDetailsStateLoading) then) =
      __$$_PetDetailsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PetDetailsStateLoadingCopyWithImpl<$Res>
    extends _$PetDetailsStateCopyWithImpl<$Res, _$_PetDetailsStateLoading>
    implements _$$_PetDetailsStateLoadingCopyWith<$Res> {
  __$$_PetDetailsStateLoadingCopyWithImpl(_$_PetDetailsStateLoading _value,
      $Res Function(_$_PetDetailsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PetDetailsStateLoading implements _PetDetailsStateLoading {
  const _$_PetDetailsStateLoading();

  @override
  String toString() {
    return 'PetDetailsState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetDetailsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(PetModel petDetails) done,
    required TResult Function() failed,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(PetModel petDetails)? done,
    TResult? Function()? failed,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(PetModel petDetails)? done,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PetDetailsStateInitial value) initial,
    required TResult Function(_PetDetailsStateLoading value) processing,
    required TResult Function(_PetDetailsStateLoaded value) done,
    required TResult Function(_PetDetailsStateError value) failed,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PetDetailsStateInitial value)? initial,
    TResult? Function(_PetDetailsStateLoading value)? processing,
    TResult? Function(_PetDetailsStateLoaded value)? done,
    TResult? Function(_PetDetailsStateError value)? failed,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PetDetailsStateInitial value)? initial,
    TResult Function(_PetDetailsStateLoading value)? processing,
    TResult Function(_PetDetailsStateLoaded value)? done,
    TResult Function(_PetDetailsStateError value)? failed,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _PetDetailsStateLoading implements PetDetailsState {
  const factory _PetDetailsStateLoading() = _$_PetDetailsStateLoading;
}

/// @nodoc
abstract class _$$_PetDetailsStateLoadedCopyWith<$Res> {
  factory _$$_PetDetailsStateLoadedCopyWith(_$_PetDetailsStateLoaded value,
          $Res Function(_$_PetDetailsStateLoaded) then) =
      __$$_PetDetailsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({PetModel petDetails});

  $PetModelCopyWith<$Res> get petDetails;
}

/// @nodoc
class __$$_PetDetailsStateLoadedCopyWithImpl<$Res>
    extends _$PetDetailsStateCopyWithImpl<$Res, _$_PetDetailsStateLoaded>
    implements _$$_PetDetailsStateLoadedCopyWith<$Res> {
  __$$_PetDetailsStateLoadedCopyWithImpl(_$_PetDetailsStateLoaded _value,
      $Res Function(_$_PetDetailsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petDetails = null,
  }) {
    return _then(_$_PetDetailsStateLoaded(
      petDetails: null == petDetails
          ? _value.petDetails
          : petDetails // ignore: cast_nullable_to_non_nullable
              as PetModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PetModelCopyWith<$Res> get petDetails {
    return $PetModelCopyWith<$Res>(_value.petDetails, (value) {
      return _then(_value.copyWith(petDetails: value));
    });
  }
}

/// @nodoc

class _$_PetDetailsStateLoaded implements _PetDetailsStateLoaded {
  const _$_PetDetailsStateLoaded({required this.petDetails});

  @override
  final PetModel petDetails;

  @override
  String toString() {
    return 'PetDetailsState.done(petDetails: $petDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetDetailsStateLoaded &&
            (identical(other.petDetails, petDetails) ||
                other.petDetails == petDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetDetailsStateLoadedCopyWith<_$_PetDetailsStateLoaded> get copyWith =>
      __$$_PetDetailsStateLoadedCopyWithImpl<_$_PetDetailsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(PetModel petDetails) done,
    required TResult Function() failed,
  }) {
    return done(petDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(PetModel petDetails)? done,
    TResult? Function()? failed,
  }) {
    return done?.call(petDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(PetModel petDetails)? done,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(petDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PetDetailsStateInitial value) initial,
    required TResult Function(_PetDetailsStateLoading value) processing,
    required TResult Function(_PetDetailsStateLoaded value) done,
    required TResult Function(_PetDetailsStateError value) failed,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PetDetailsStateInitial value)? initial,
    TResult? Function(_PetDetailsStateLoading value)? processing,
    TResult? Function(_PetDetailsStateLoaded value)? done,
    TResult? Function(_PetDetailsStateError value)? failed,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PetDetailsStateInitial value)? initial,
    TResult Function(_PetDetailsStateLoading value)? processing,
    TResult Function(_PetDetailsStateLoaded value)? done,
    TResult Function(_PetDetailsStateError value)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _PetDetailsStateLoaded implements PetDetailsState {
  const factory _PetDetailsStateLoaded({required final PetModel petDetails}) =
      _$_PetDetailsStateLoaded;

  PetModel get petDetails;
  @JsonKey(ignore: true)
  _$$_PetDetailsStateLoadedCopyWith<_$_PetDetailsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PetDetailsStateErrorCopyWith<$Res> {
  factory _$$_PetDetailsStateErrorCopyWith(_$_PetDetailsStateError value,
          $Res Function(_$_PetDetailsStateError) then) =
      __$$_PetDetailsStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PetDetailsStateErrorCopyWithImpl<$Res>
    extends _$PetDetailsStateCopyWithImpl<$Res, _$_PetDetailsStateError>
    implements _$$_PetDetailsStateErrorCopyWith<$Res> {
  __$$_PetDetailsStateErrorCopyWithImpl(_$_PetDetailsStateError _value,
      $Res Function(_$_PetDetailsStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PetDetailsStateError implements _PetDetailsStateError {
  const _$_PetDetailsStateError();

  @override
  String toString() {
    return 'PetDetailsState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PetDetailsStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function(PetModel petDetails) done,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function(PetModel petDetails)? done,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function(PetModel petDetails)? done,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PetDetailsStateInitial value) initial,
    required TResult Function(_PetDetailsStateLoading value) processing,
    required TResult Function(_PetDetailsStateLoaded value) done,
    required TResult Function(_PetDetailsStateError value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PetDetailsStateInitial value)? initial,
    TResult? Function(_PetDetailsStateLoading value)? processing,
    TResult? Function(_PetDetailsStateLoaded value)? done,
    TResult? Function(_PetDetailsStateError value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PetDetailsStateInitial value)? initial,
    TResult Function(_PetDetailsStateLoading value)? processing,
    TResult Function(_PetDetailsStateLoaded value)? done,
    TResult Function(_PetDetailsStateError value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PetDetailsStateError implements PetDetailsState {
  const factory _PetDetailsStateError() = _$_PetDetailsStateError;
}

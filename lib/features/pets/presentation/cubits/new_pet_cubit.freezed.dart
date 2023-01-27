// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_pet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewPetState {
  String get petName => throw _privateConstructorUsedError;
  String get petBreed => throw _privateConstructorUsedError;
  String get sex => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  FetchState get fetchState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPetStateCopyWith<NewPetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPetStateCopyWith<$Res> {
  factory $NewPetStateCopyWith(
          NewPetState value, $Res Function(NewPetState) then) =
      _$NewPetStateCopyWithImpl<$Res, NewPetState>;
  @useResult
  $Res call(
      {String petName,
      String petBreed,
      String sex,
      String category,
      String imageUrl,
      int? weight,
      int? age,
      String description,
      FetchState fetchState});
}

/// @nodoc
class _$NewPetStateCopyWithImpl<$Res, $Val extends NewPetState>
    implements $NewPetStateCopyWith<$Res> {
  _$NewPetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petName = null,
    Object? petBreed = null,
    Object? sex = null,
    Object? category = null,
    Object? imageUrl = null,
    Object? weight = freezed,
    Object? age = freezed,
    Object? description = null,
    Object? fetchState = null,
  }) {
    return _then(_value.copyWith(
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      petBreed: null == petBreed
          ? _value.petBreed
          : petBreed // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fetchState: null == fetchState
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewPetStateCopyWith<$Res>
    implements $NewPetStateCopyWith<$Res> {
  factory _$$_NewPetStateCopyWith(
          _$_NewPetState value, $Res Function(_$_NewPetState) then) =
      __$$_NewPetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String petName,
      String petBreed,
      String sex,
      String category,
      String imageUrl,
      int? weight,
      int? age,
      String description,
      FetchState fetchState});
}

/// @nodoc
class __$$_NewPetStateCopyWithImpl<$Res>
    extends _$NewPetStateCopyWithImpl<$Res, _$_NewPetState>
    implements _$$_NewPetStateCopyWith<$Res> {
  __$$_NewPetStateCopyWithImpl(
      _$_NewPetState _value, $Res Function(_$_NewPetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petName = null,
    Object? petBreed = null,
    Object? sex = null,
    Object? category = null,
    Object? imageUrl = null,
    Object? weight = freezed,
    Object? age = freezed,
    Object? description = null,
    Object? fetchState = null,
  }) {
    return _then(_$_NewPetState(
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      petBreed: null == petBreed
          ? _value.petBreed
          : petBreed // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fetchState: null == fetchState
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ));
  }
}

/// @nodoc

class _$_NewPetState implements _NewPetState {
  const _$_NewPetState(
      {this.petName = '',
      this.petBreed = '',
      this.sex = '',
      this.category = '',
      this.imageUrl = '',
      this.weight = 0,
      this.age = 0,
      this.description = '',
      this.fetchState = FetchState.initial});

  @override
  @JsonKey()
  final String petName;
  @override
  @JsonKey()
  final String petBreed;
  @override
  @JsonKey()
  final String sex;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final int? weight;
  @override
  @JsonKey()
  final int? age;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final FetchState fetchState;

  @override
  String toString() {
    return 'NewPetState(petName: $petName, petBreed: $petBreed, sex: $sex, category: $category, imageUrl: $imageUrl, weight: $weight, age: $age, description: $description, fetchState: $fetchState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPetState &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.petBreed, petBreed) ||
                other.petBreed == petBreed) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fetchState, fetchState) ||
                other.fetchState == fetchState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petName, petBreed, sex, category,
      imageUrl, weight, age, description, fetchState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPetStateCopyWith<_$_NewPetState> get copyWith =>
      __$$_NewPetStateCopyWithImpl<_$_NewPetState>(this, _$identity);
}

abstract class _NewPetState implements NewPetState {
  const factory _NewPetState(
      {final String petName,
      final String petBreed,
      final String sex,
      final String category,
      final String imageUrl,
      final int? weight,
      final int? age,
      final String description,
      final FetchState fetchState}) = _$_NewPetState;

  @override
  String get petName;
  @override
  String get petBreed;
  @override
  String get sex;
  @override
  String get category;
  @override
  String get imageUrl;
  @override
  int? get weight;
  @override
  int? get age;
  @override
  String get description;
  @override
  FetchState get fetchState;
  @override
  @JsonKey(ignore: true)
  _$$_NewPetStateCopyWith<_$_NewPetState> get copyWith =>
      throw _privateConstructorUsedError;
}

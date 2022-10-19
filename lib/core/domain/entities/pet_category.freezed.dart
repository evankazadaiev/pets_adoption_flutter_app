// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetCategory _$PetCategoryFromJson(Map<String, dynamic> json) {
  return _PetCategory.fromJson(json);
}

/// @nodoc
mixin _$PetCategory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get iconCodePoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCategoryCopyWith<PetCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCategoryCopyWith<$Res> {
  factory $PetCategoryCopyWith(
          PetCategory value, $Res Function(PetCategory) then) =
      _$PetCategoryCopyWithImpl<$Res>;
  $Res call({String id, String title, String iconCodePoint});
}

/// @nodoc
class _$PetCategoryCopyWithImpl<$Res> implements $PetCategoryCopyWith<$Res> {
  _$PetCategoryCopyWithImpl(this._value, this._then);

  final PetCategory _value;
  // ignore: unused_field
  final $Res Function(PetCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? iconCodePoint = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconCodePoint: iconCodePoint == freezed
          ? _value.iconCodePoint
          : iconCodePoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PetCategoryCopyWith<$Res>
    implements $PetCategoryCopyWith<$Res> {
  factory _$$_PetCategoryCopyWith(
          _$_PetCategory value, $Res Function(_$_PetCategory) then) =
      __$$_PetCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String iconCodePoint});
}

/// @nodoc
class __$$_PetCategoryCopyWithImpl<$Res> extends _$PetCategoryCopyWithImpl<$Res>
    implements _$$_PetCategoryCopyWith<$Res> {
  __$$_PetCategoryCopyWithImpl(
      _$_PetCategory _value, $Res Function(_$_PetCategory) _then)
      : super(_value, (v) => _then(v as _$_PetCategory));

  @override
  _$_PetCategory get _value => super._value as _$_PetCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? iconCodePoint = freezed,
  }) {
    return _then(_$_PetCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconCodePoint: iconCodePoint == freezed
          ? _value.iconCodePoint
          : iconCodePoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetCategory implements _PetCategory {
  const _$_PetCategory(
      {required this.id, required this.title, required this.iconCodePoint});

  factory _$_PetCategory.fromJson(Map<String, dynamic> json) =>
      _$$_PetCategoryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String iconCodePoint;

  @override
  String toString() {
    return 'PetCategory(id: $id, title: $title, iconCodePoint: $iconCodePoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.iconCodePoint, iconCodePoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(iconCodePoint));

  @JsonKey(ignore: true)
  @override
  _$$_PetCategoryCopyWith<_$_PetCategory> get copyWith =>
      __$$_PetCategoryCopyWithImpl<_$_PetCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetCategoryToJson(
      this,
    );
  }
}

abstract class _PetCategory implements PetCategory {
  const factory _PetCategory(
      {required final String id,
      required final String title,
      required final String iconCodePoint}) = _$_PetCategory;

  factory _PetCategory.fromJson(Map<String, dynamic> json) =
      _$_PetCategory.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get iconCodePoint;
  @override
  @JsonKey(ignore: true)
  _$$_PetCategoryCopyWith<_$_PetCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

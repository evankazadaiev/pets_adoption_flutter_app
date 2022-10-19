// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetModel _$PetModelFromJson(Map<String, dynamic> json) {
  return _PetModel.fromJson(json);
}

/// @nodoc
mixin _$PetModel {
  int get id => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get breedName => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<PetAnthropometry> get anthropometry =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetModelCopyWith<PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetModelCopyWith<$Res> {
  factory $PetModelCopyWith(PetModel value, $Res Function(PetModel) then) =
      _$PetModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String categoryId,
      String name,
      String breedName,
      bool isFavorite,
      String imageUrl,
      String description,
      List<PetAnthropometry> anthropometry});
}

/// @nodoc
class _$PetModelCopyWithImpl<$Res> implements $PetModelCopyWith<$Res> {
  _$PetModelCopyWithImpl(this._value, this._then);

  final PetModel _value;
  // ignore: unused_field
  final $Res Function(PetModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? name = freezed,
    Object? breedName = freezed,
    Object? isFavorite = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? anthropometry = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: breedName == freezed
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      anthropometry: anthropometry == freezed
          ? _value.anthropometry
          : anthropometry // ignore: cast_nullable_to_non_nullable
              as List<PetAnthropometry>,
    ));
  }
}

/// @nodoc
abstract class _$$_PetModelCopyWith<$Res> implements $PetModelCopyWith<$Res> {
  factory _$$_PetModelCopyWith(
          _$_PetModel value, $Res Function(_$_PetModel) then) =
      __$$_PetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String categoryId,
      String name,
      String breedName,
      bool isFavorite,
      String imageUrl,
      String description,
      List<PetAnthropometry> anthropometry});
}

/// @nodoc
class __$$_PetModelCopyWithImpl<$Res> extends _$PetModelCopyWithImpl<$Res>
    implements _$$_PetModelCopyWith<$Res> {
  __$$_PetModelCopyWithImpl(
      _$_PetModel _value, $Res Function(_$_PetModel) _then)
      : super(_value, (v) => _then(v as _$_PetModel));

  @override
  _$_PetModel get _value => super._value as _$_PetModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? name = freezed,
    Object? breedName = freezed,
    Object? isFavorite = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? anthropometry = freezed,
  }) {
    return _then(_$_PetModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: breedName == freezed
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      anthropometry: anthropometry == freezed
          ? _value._anthropometry
          : anthropometry // ignore: cast_nullable_to_non_nullable
              as List<PetAnthropometry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetModel implements _PetModel {
  const _$_PetModel(
      {required this.id,
      required this.categoryId,
      required this.name,
      required this.breedName,
      required this.isFavorite,
      required this.imageUrl,
      required this.description,
      required final List<PetAnthropometry> anthropometry})
      : _anthropometry = anthropometry;

  factory _$_PetModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetModelFromJson(json);

  @override
  final int id;
  @override
  final String categoryId;
  @override
  final String name;
  @override
  final String breedName;
  @override
  final bool isFavorite;
  @override
  final String imageUrl;
  @override
  final String description;
  final List<PetAnthropometry> _anthropometry;
  @override
  List<PetAnthropometry> get anthropometry {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anthropometry);
  }

  @override
  String toString() {
    return 'PetModel(id: $id, categoryId: $categoryId, name: $name, breedName: $breedName, isFavorite: $isFavorite, imageUrl: $imageUrl, description: $description, anthropometry: $anthropometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.breedName, breedName) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._anthropometry, _anthropometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(breedName),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_anthropometry));

  @JsonKey(ignore: true)
  @override
  _$$_PetModelCopyWith<_$_PetModel> get copyWith =>
      __$$_PetModelCopyWithImpl<_$_PetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetModelToJson(
      this,
    );
  }
}

abstract class _PetModel implements PetModel {
  const factory _PetModel(
      {required final int id,
      required final String categoryId,
      required final String name,
      required final String breedName,
      required final bool isFavorite,
      required final String imageUrl,
      required final String description,
      required final List<PetAnthropometry> anthropometry}) = _$_PetModel;

  factory _PetModel.fromJson(Map<String, dynamic> json) = _$_PetModel.fromJson;

  @override
  int get id;
  @override
  String get categoryId;
  @override
  String get name;
  @override
  String get breedName;
  @override
  bool get isFavorite;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  List<PetAnthropometry> get anthropometry;
  @override
  @JsonKey(ignore: true)
  _$$_PetModelCopyWith<_$_PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

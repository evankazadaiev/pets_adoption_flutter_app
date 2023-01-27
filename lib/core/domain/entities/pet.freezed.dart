// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get id => throw _privateConstructorUsedError;
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
      _$PetModelCopyWithImpl<$Res, PetModel>;
  @useResult
  $Res call(
      {String id,
      String categoryId,
      String name,
      String breedName,
      bool isFavorite,
      String imageUrl,
      String description,
      List<PetAnthropometry> anthropometry});
}

/// @nodoc
class _$PetModelCopyWithImpl<$Res, $Val extends PetModel>
    implements $PetModelCopyWith<$Res> {
  _$PetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? breedName = null,
    Object? isFavorite = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? anthropometry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      anthropometry: null == anthropometry
          ? _value.anthropometry
          : anthropometry // ignore: cast_nullable_to_non_nullable
              as List<PetAnthropometry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetModelCopyWith<$Res> implements $PetModelCopyWith<$Res> {
  factory _$$_PetModelCopyWith(
          _$_PetModel value, $Res Function(_$_PetModel) then) =
      __$$_PetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryId,
      String name,
      String breedName,
      bool isFavorite,
      String imageUrl,
      String description,
      List<PetAnthropometry> anthropometry});
}

/// @nodoc
class __$$_PetModelCopyWithImpl<$Res>
    extends _$PetModelCopyWithImpl<$Res, _$_PetModel>
    implements _$$_PetModelCopyWith<$Res> {
  __$$_PetModelCopyWithImpl(
      _$_PetModel _value, $Res Function(_$_PetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? breedName = null,
    Object? isFavorite = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? anthropometry = null,
  }) {
    return _then(_$_PetModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      anthropometry: null == anthropometry
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
  final String id;
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
    if (_anthropometry is EqualUnmodifiableListView) return _anthropometry;
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.breedName, breedName) ||
                other.breedName == breedName) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._anthropometry, _anthropometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      name,
      breedName,
      isFavorite,
      imageUrl,
      description,
      const DeepCollectionEquality().hash(_anthropometry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      {required final String id,
      required final String categoryId,
      required final String name,
      required final String breedName,
      required final bool isFavorite,
      required final String imageUrl,
      required final String description,
      required final List<PetAnthropometry> anthropometry}) = _$_PetModel;

  factory _PetModel.fromJson(Map<String, dynamic> json) = _$_PetModel.fromJson;

  @override
  String get id;
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

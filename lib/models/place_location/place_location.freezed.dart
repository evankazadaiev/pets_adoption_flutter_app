// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceLocation _$PlaceLocationFromJson(Map<String, dynamic> json) {
  return _PlaceLocation.fromJson(json);
}

/// @nodoc
mixin _$PlaceLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceLocationCopyWith<PlaceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceLocationCopyWith<$Res> {
  factory $PlaceLocationCopyWith(
          PlaceLocation value, $Res Function(PlaceLocation) then) =
      _$PlaceLocationCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class _$PlaceLocationCopyWithImpl<$Res>
    implements $PlaceLocationCopyWith<$Res> {
  _$PlaceLocationCopyWithImpl(this._value, this._then);

  final PlaceLocation _value;
  // ignore: unused_field
  final $Res Function(PlaceLocation) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceLocationCopyWith<$Res>
    implements $PlaceLocationCopyWith<$Res> {
  factory _$$_PlaceLocationCopyWith(
          _$_PlaceLocation value, $Res Function(_$_PlaceLocation) then) =
      __$$_PlaceLocationCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class __$$_PlaceLocationCopyWithImpl<$Res>
    extends _$PlaceLocationCopyWithImpl<$Res>
    implements _$$_PlaceLocationCopyWith<$Res> {
  __$$_PlaceLocationCopyWithImpl(
      _$_PlaceLocation _value, $Res Function(_$_PlaceLocation) _then)
      : super(_value, (v) => _then(v as _$_PlaceLocation));

  @override
  _$_PlaceLocation get _value => super._value as _$_PlaceLocation;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_PlaceLocation(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceLocation implements _PlaceLocation {
  const _$_PlaceLocation(
      {required this.latitude, required this.longitude, required this.address});

  factory _$_PlaceLocation.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceLocationFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String address;

  @override
  String toString() {
    return 'PlaceLocation(latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceLocation &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceLocationCopyWith<_$_PlaceLocation> get copyWith =>
      __$$_PlaceLocationCopyWithImpl<_$_PlaceLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceLocationToJson(
      this,
    );
  }
}

abstract class _PlaceLocation implements PlaceLocation {
  const factory _PlaceLocation(
      {required final double latitude,
      required final double longitude,
      required final String address}) = _$_PlaceLocation;

  factory _PlaceLocation.fromJson(Map<String, dynamic> json) =
      _$_PlaceLocation.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceLocationCopyWith<_$_PlaceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  PlaceLocation get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call({String id, String title, PlaceLocation location, String image});

  $PlaceLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? image = freezed,
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocation,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PlaceLocationCopyWith<$Res> get location {
    return $PlaceLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, PlaceLocation location, String image});

  @override
  $PlaceLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, (v) => _then(v as _$_Place));

  @override
  _$_Place get _value => super._value as _$_Place;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Place(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocation,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  const _$_Place(
      {required this.id,
      required this.title,
      required this.location,
      required this.image});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final PlaceLocation location;
  @override
  final String image;

  @override
  String toString() {
    return 'Place(id: $id, title: $title, location: $location, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {required final String id,
      required final String title,
      required final PlaceLocation location,
      required final String image}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  PlaceLocation get location;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PlaceLocationCopyWithImpl<$Res, PlaceLocation>;
  @useResult
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class _$PlaceLocationCopyWithImpl<$Res, $Val extends PlaceLocation>
    implements $PlaceLocationCopyWith<$Res> {
  _$PlaceLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceLocationCopyWith<$Res>
    implements $PlaceLocationCopyWith<$Res> {
  factory _$$_PlaceLocationCopyWith(
          _$_PlaceLocation value, $Res Function(_$_PlaceLocation) then) =
      __$$_PlaceLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String address});
}

/// @nodoc
class __$$_PlaceLocationCopyWithImpl<$Res>
    extends _$PlaceLocationCopyWithImpl<$Res, _$_PlaceLocation>
    implements _$$_PlaceLocationCopyWith<$Res> {
  __$$_PlaceLocationCopyWithImpl(
      _$_PlaceLocation _value, $Res Function(_$_PlaceLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(_$_PlaceLocation(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
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
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call({String id, String title, PlaceLocation location, String image});

  $PlaceLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocation,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceLocationCopyWith<$Res> get location {
    return $PlaceLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, PlaceLocation location, String image});

  @override
  $PlaceLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res, _$_Place>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? image = null,
  }) {
    return _then(_$_Place(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocation,
      image: null == image
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, location, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_location.freezed.dart';
part 'place_location.g.dart';

@freezed
class PlaceLocation with _$PlaceLocation {
  const factory PlaceLocation({
    required double latitude,
    required double longitude,
    required String address,
  }) = _PlaceLocation;

  factory PlaceLocation.fromJson(Map<String, dynamic> json) =>
      _$PlaceLocationFromJson(json);
}

// class PlaceLocation {
//   final double latitude;
//   final double longitude;
//   final String address;
//
//   const PlaceLocation(
//       {required this.latitude, required this.longitude, this.address = ''});
// }

@freezed
class Place with _$Place {
  const factory Place(
      {required String id,
      required String title,
      required PlaceLocation location,
      required String image}) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

// class Place {
//   final String id;
//   final String title;
//   final PlaceLocation location;
//   final File image;
//
//   Place(
//       {required this.id,
//         required this.title,
//         required this.location,
//         required this.image});
// }

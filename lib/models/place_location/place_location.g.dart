// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceLocation _$$_PlaceLocationFromJson(Map<String, dynamic> json) =>
    _$_PlaceLocation(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_PlaceLocationToJson(_$_PlaceLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      id: json['id'] as String,
      title: json['title'] as String,
      location:
          PlaceLocation.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'image': instance.image,
    };

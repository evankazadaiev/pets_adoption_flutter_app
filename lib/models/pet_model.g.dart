// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetAnthropometry _$$_PetAnthropometryFromJson(Map<String, dynamic> json) =>
    _$_PetAnthropometry(
      label: json['label'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_PetAnthropometryToJson(_$_PetAnthropometry instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
    };

_$_PetModel _$$_PetModelFromJson(Map<String, dynamic> json) => _$_PetModel(
      id: json['id'] as int,
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      breedName: json['breedName'] as String,
      isFavorite: json['isFavorite'] as bool,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      anthropometry: (json['anthropometry'] as List<dynamic>)
          .map((e) => PetAnthropometry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PetModelToJson(_$_PetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'breedName': instance.breedName,
      'isFavorite': instance.isFavorite,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'anthropometry': instance.anthropometry,
    };
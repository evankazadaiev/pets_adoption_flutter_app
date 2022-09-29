// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetModel _$$_PetModelFromJson(Map<String, dynamic> json) => _$_PetModel(
      id: json['id'] as int,
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      breedName: json['breedName'] as String,
      isFavorite: json['isFavorite'] as bool,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_PetModelToJson(_$_PetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'breedName': instance.breedName,
      'isFavorite': instance.isFavorite,
      'imageUrl': instance.imageUrl,
    };

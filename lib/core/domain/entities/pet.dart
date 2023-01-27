import 'package:freezed_annotation/freezed_annotation.dart';

import './pet_anthropometry.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
class PetModel with _$PetModel {
  const factory PetModel(
      {required String id,
      required String categoryId,
      required String name,
      required String breedName,
      required bool isFavorite,
      required String imageUrl,
      required String description,
      required List<PetAnthropometry> anthropometry}) = _PetModel;

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);
}

// class PetModel {
//   final int id;
//   final String categoryId;
//   final String name;
//   final String breed_name;
//   final bool isFavorite;
//   final String imageUrl;
//   const PetModel(
//       {required this.id,
//       required this.categoryId,
//       required this.name,
//       required this.breed_name,
//       required this.isFavorite,
//       required this.imageUrl});
//
//   PetModel.fromMap(Map<String, dynamic> data)
//       : id = data['id'],
//         categoryId = data['categoryId'],
//         name = data['name'],
//         breed_name = data['breed_name'],
//         isFavorite = data['isFavorite'],
//         imageUrl = data['imageUrl'];
//
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'categoryId': categoryId,
//       'name': name,
//       'breed_name': breed_name,
//       'isFavorite': isFavorite,
//       'imageUrl': imageUrl
//     };
//   }
// }

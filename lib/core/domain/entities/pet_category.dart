import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_category.freezed.dart';
part 'pet_category.g.dart';

@freezed
class PetCategory with _$PetCategory {
  const factory PetCategory(
      {required String id,
      required String title,
      required String iconCodePoint}) = _PetCategory;

  factory PetCategory.fromJson(Map<String, dynamic> json) =>
      _$PetCategoryFromJson(json);
}

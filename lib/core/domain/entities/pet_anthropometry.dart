import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_anthropometry.freezed.dart';
part 'pet_anthropometry.g.dart';

@freezed
class PetAnthropometry with _$PetAnthropometry {
  const factory PetAnthropometry({
    required String label,
    required String value,
  }) = _PetAnthropometry;

  factory PetAnthropometry.fromJson(Map<String, dynamic> json) =>
      _$PetAnthropometryFromJson(json);
}

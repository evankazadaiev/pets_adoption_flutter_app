import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/pet.dart';
import 'package:pets_adoption/core/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/features/pets/domain/usecases/create_pet_advertisement.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockPetsRepository extends Mock implements IPetsRepository {}

void main() {
  late MockPetsRepository mockAdvertisementRepository;
  late CreatePetAdvertisement usecase;

  setUp(() {
    mockAdvertisementRepository = MockPetsRepository();
    usecase = CreatePetAdvertisement(mockAdvertisementRepository);
  });

  group("CreateAdvertisement", () {
    final testData = PetModel.fromJson(json.decode(fixture("pet.json")));
    test("should call [createAdvertisement] from the repo", () async {
      when(() => mockAdvertisementRepository.createPetAdvertisement(
          data: testData)).thenAnswer((_) async => const Right(SuccessEmpty()));

      final result = await usecase.execute(testData);

      expect(result, const Right(SuccessEmpty()));
      verify(() =>
          mockAdvertisementRepository.createPetAdvertisement(data: testData));
      verifyNoMoreInteractions(mockAdvertisementRepository);
    });
  });
}

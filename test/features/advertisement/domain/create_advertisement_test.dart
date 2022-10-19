import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/pet.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/features/advertisement/domain/repositories/advertisement_repository_interface.dart';
import 'package:pets_adoption/features/advertisement/domain/usecases/create_advertisement.dart';

import '../../../fixtures/fixture_reader.dart';

class MockAdvertisementRepository extends Mock
    implements IAdvertisementRepository {}

void main() {
  late MockAdvertisementRepository mockAdvertisementRepository;
  late CreateAdvertisement usecase;

  setUp(() {
    mockAdvertisementRepository = MockAdvertisementRepository();
    usecase = CreateAdvertisement(mockAdvertisementRepository);
  });

  group("CreateAdvertisement", () {
    final testData = PetModel.fromJson(json.decode(fixture("pet.json")));
    test("should call [createAdvertisement] from the repo", () async {
      when(() =>
              mockAdvertisementRepository.createAdvertisement(data: testData))
          .thenAnswer((_) async => const Right(SuccessEmpty()));

      final result = await usecase.execute(testData);

      expect(result, const Right(SuccessEmpty()));
      verify(() =>
          mockAdvertisementRepository.createAdvertisement(data: testData));
      verifyNoMoreInteractions(mockAdvertisementRepository);
    });
  });
}

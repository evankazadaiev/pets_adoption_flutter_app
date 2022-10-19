import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/features/advertisement/domain/repositories/advertisement_repository_interface.dart';
import 'package:pets_adoption/features/advertisement/domain/usecases/edit_advertisement.dart';

class MockAdvertisementRepository extends Mock
    implements IAdvertisementRepository {}

void main() {
  late MockAdvertisementRepository mockAdvertisementRepository;
  late EditAdvertisement usecase;

  setUp(() {
    mockAdvertisementRepository = MockAdvertisementRepository();
    usecase = EditAdvertisement(mockAdvertisementRepository);
  });

  group("EditAdvertisement", () {
    const String testId = "id_test";

    test("should call [editAdvertisement] from the repo", () async {
      when(() => mockAdvertisementRepository.editAdvertisement(any()))
          .thenAnswer((_) async => const Right(SuccessEmpty()));

      final result = await usecase.execute(testId);

      expect(result, const Right(SuccessEmpty()));
      verify(() => mockAdvertisementRepository.editAdvertisement(testId));
      verifyNoMoreInteractions(mockAdvertisementRepository);
    });
  });
}

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/features/pets/domain/usecases/delete_pet_advertisement.dart';

class MockPetsRepository extends Mock implements IPetsRepository {}

void main() {
  late MockPetsRepository mockAdvertisementRepository;
  late DeleteAdvertisement usecase;

  setUp(() {
    mockAdvertisementRepository = MockPetsRepository();
    usecase = DeleteAdvertisement(mockAdvertisementRepository);
  });

  group("DeleteAdvertisement", () {
    const String testId = "id_test";

    test("should call [deleteAdvertisement] from the repo", () async {
      when(() => mockAdvertisementRepository.deletePetAdvertisement(any()))
          .thenAnswer((_) async => const Right(SuccessEmpty()));

      final result = await usecase.execute(testId);

      expect(result, const Right(SuccessEmpty()));
      verify(() => mockAdvertisementRepository.deletePetAdvertisement(testId));
      verifyNoMoreInteractions(mockAdvertisementRepository);
    });
  });
}

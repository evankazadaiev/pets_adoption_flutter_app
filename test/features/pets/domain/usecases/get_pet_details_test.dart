import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pet_details.dart';

class MockPetsRepository extends Mock implements IPetsRepository {}

void main() {
  late MockPetsRepository mockPetsRepository;
  late GetPetDetails usecase;

  setUp(() {
    mockPetsRepository = MockPetsRepository();
    usecase = GetPetDetails(mockPetsRepository);
  });

  const testId = 1;
  const testPetDetails = PetModel(
      id: 1,
      categoryId: "dogs",
      name: "Nicky",
      breedName: "test",
      isFavorite: false,
      imageUrl: "",
      description: "",
      anthropometry: [PetAnthropometry(label: "test", value: "test")]);

  group("GetPetDetails", () {
    test("should get pet details from repository", () async {
      when(() => mockPetsRepository.getPetDetails(any()))
          .thenAnswer((realInvocation) async => const Right(testPetDetails));

      final result = await usecase.execute(testId);

      expect(result, const Right(testPetDetails));
      verify(() => mockPetsRepository.getPetDetails(testId));
      verifyNoMoreInteractions(mockPetsRepository);
    });
  });
}

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pets_by_category.dart';

class MockPetsRepository extends Mock implements IPetsRepository {}

void main() {
  late MockPetsRepository mockPetsRepository;
  late GetPetsByCategory usecase;

  setUp(() {
    mockPetsRepository = MockPetsRepository();
    usecase = GetPetsByCategory(mockPetsRepository);
  });

  const testCategoryId = "dogs";
  final testAllPets = [
    const PetModel(
        id: 1,
        categoryId: "dogs",
        name: "Nicky",
        breedName: "test",
        isFavorite: false,
        imageUrl: "",
        description: "",
        anthropometry: [PetAnthropometry(label: "test", value: "test")])
  ];

  group("GetPetsByCategory", () {
    test("should get pets by category from repository", () async {
      when(() => mockPetsRepository.getPetsByCategory(any()))
          .thenAnswer((realInvocation) async => Right(testAllPets));

      final result = await usecase.execute(testCategoryId);

      expect(result, Right(testAllPets));
      verify(() => mockPetsRepository.getPetsByCategory(testCategoryId));
      verifyNoMoreInteractions(mockPetsRepository);
    });
  });
}

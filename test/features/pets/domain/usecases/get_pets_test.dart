import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pets.dart';

class MockPetsRepository extends Mock implements IPetsRepository {}

void main() {
  late MockPetsRepository mockPetsRepository;
  late GetPets usecase;

  setUp(() {
    mockPetsRepository = MockPetsRepository();
    usecase = GetPets(mockPetsRepository);
  });

  final testAllPets = [
    const PetModel(
        id: '1',
        categoryId: "dogs",
        name: "Nicky",
        breedName: "test",
        isFavorite: false,
        imageUrl: "",
        description: "",
        anthropometry: [PetAnthropometry(label: "test", value: "test")])
  ];

  group("GetAllPets", () {
    test("should get pets from repository", () async {
      when(() => mockPetsRepository.getAllPets())
          .thenAnswer((realInvocation) async => Right(testAllPets));

      final result = await usecase.execute();

      expect(result, Right(testAllPets));
      verify(() => mockPetsRepository.getAllPets());
      verifyNoMoreInteractions(mockPetsRepository);
    });
  });
}

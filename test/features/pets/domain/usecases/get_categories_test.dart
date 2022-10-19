import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_categories.dart';

class MockPetsRepository extends Mock implements IPetsRepository {}

void main() {
  late MockPetsRepository mockPetsRepository;
  late GetCategories usecase;

  setUp(() {
    mockPetsRepository = MockPetsRepository();
    usecase = GetCategories(mockPetsRepository);
  });

  final testAllCategories = [
    const PetCategory(id: "test", title: "test_title", iconCodePoint: "0X0000")
  ];

  group("GetAllCategories", () {
    test("should get categories from repository", () async {
      when(() => mockPetsRepository.getAllCategories())
          .thenAnswer((realInvocation) async => Right(testAllCategories));

      final result = await usecase.execute();

      expect(result, Right(testAllCategories));
      verify(() => mockPetsRepository.getAllCategories());
      verifyNoMoreInteractions(mockPetsRepository);
    });
  });
}

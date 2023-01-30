import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/enums/enums.dart';
import 'package:pets_adoption/core/domain/usecases/pets/get_categories.dart';
import 'package:pets_adoption/core/presentation/cubits/pets/categories_cubit.dart';
import 'package:pets_adoption/features/pets/pets.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockGetCategories extends Mock implements GetCategories {}

class MockGetPetDetails extends Mock implements GetPetDetails {}

class MockGetPets extends Mock implements GetPets {}

void main() {
  // TODO:: [kazadaiev] - finish tests
  late MockGetCategories mockGetCategories;
  late CategoriesCubit cubit;
  setUp(() {
    mockGetCategories = MockGetCategories();
    cubit = CategoriesCubit(getCategories: mockGetCategories);
  });

  group("getAllCategories", () {
    final testCategoriesList = [
      PetCategory.fromJson(json.decode(fixture("pet_category.json")))
    ];

    blocTest<CategoriesCubit, CategoriesState>(
      "should fill the categories state in case of success",
      build: () {
        when(() => mockGetCategories.execute())
            .thenAnswer((_) async => Right(testCategoriesList));

        return cubit;
      },
      act: (cubit) => cubit.getAllCategories(),
      expect: () => <CategoriesState>[
        const CategoriesState(fetchState: FetchState.fetching),
        CategoriesState(
            fetchState: FetchState.success, categories: testCategoriesList),
      ],
    );
  });

  group("handleSelectId", () {
    blocTest<CategoriesCubit, CategoriesState>(
      "should update [selectId] state",
      build: () {
        return cubit;
      },
      act: (cubit) => cubit.handleSelectId("test_id"),
      expect: () => <CategoriesState>[
        const CategoriesState(selectedId: "test_id"),
      ],
    );
  });
}

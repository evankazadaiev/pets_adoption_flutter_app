import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/enums/fetch_state.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pets_by_category.dart';
import 'package:pets_adoption/features/pets/pets.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pets_cubit.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockGetPets extends Mock implements GetPets {}

class MockGetPetsByCategory extends Mock implements GetPetsByCategory {}

void main() {
  late MockGetPets mockGetPets;
  late MockGetPetsByCategory mockGetPetsByCategory;
  late PetsCubit cubit;
  setUp(() {
    mockGetPets = MockGetPets();
    mockGetPetsByCategory = MockGetPetsByCategory();
    cubit = PetsCubit(
        getPets: mockGetPets, getPetsByCategory: mockGetPetsByCategory);
  });

  group("getAllPets", () {
    final testPetsList = [PetModel.fromJson(json.decode(fixture("pet.json")))];

    blocTest<PetsCubit, PetsState>(
      "should fill the pets state in case of success",
      build: () {
        when(() => mockGetPets.execute())
            .thenAnswer((_) async => Right(testPetsList));

        return cubit;
      },
      act: (cubit) => cubit.getAllPets(),
      expect: () => <PetsState>[
        const PetsState(fetchState: FetchState.fetching),
        PetsState(fetchState: FetchState.success, pets: testPetsList),
      ],
    );
  });
  group("getAllPetsByCategory", () {
    const testCategoryId = "dogs";
    final testPetsList = [PetModel.fromJson(json.decode(fixture("pet.json")))];

    blocTest<PetsCubit, PetsState>(
      "should fill the pets state in case of success",
      build: () {
        when(() => mockGetPetsByCategory.execute(any()))
            .thenAnswer((_) async => Right(testPetsList));

        return cubit;
      },
      act: (cubit) => cubit.getAllPetsByCategory(testCategoryId),
      expect: () => <PetsState>[
        const PetsState(fetchState: FetchState.fetching),
        PetsState(fetchState: FetchState.success, pets: testPetsList),
      ],
    );
  });
}

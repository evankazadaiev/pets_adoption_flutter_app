import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/pet.dart';
import 'package:pets_adoption/core/domain/enums/enums.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/features/pets/domain/usecases/create_pet_advertisement.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/new_pet_cubit.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockCreatePetAdvertisement extends Mock
    implements CreatePetAdvertisement {}

class FakePetModel extends Fake implements PetModel {}

void main() {
  late NewPetCubit cubit;
  late MockCreatePetAdvertisement mockCreatePetAdvertisement;

  setUp(() {
    mockCreatePetAdvertisement = MockCreatePetAdvertisement();
    registerFallbackValue(FakePetModel());
    cubit = NewPetCubit(createPetAdvertisement: mockCreatePetAdvertisement);
  });

  final testPetDetails = PetModel.fromJson(json.decode(fixture("pet.json")));

  test('initial state is initial', () {
    expect(cubit.state, const NewPetState());
  });

  blocTest<NewPetCubit, NewPetState>(
    "submitBriefDetails should specify name and breed",
    build: () {
      return cubit;
    },
    act: (cubit) => cubit.submitBriefDetails(petBreed: "test", petName: "test"),
    expect: () => <NewPetState>[
      const NewPetState(petName: "test", petBreed: "test"),
    ],
  );

  blocTest<NewPetCubit, NewPetState>(
    "submitAnthropometry should specify age, weight, and description",
    build: () {
      return cubit;
    },
    act: (cubit) => cubit.submitAnthropometry(
        age: 12, weight: 12, description: "test", imageUrl: ''),
    expect: () => <NewPetState>[
      const NewPetState(age: 12, weight: 12, description: "test"),
    ],
  );

  blocTest<NewPetCubit, NewPetState>(
    "createNewPetAdvertisement should emit FetchState.success in case of success",
    build: () {
      when(() => mockCreatePetAdvertisement.execute(any()))
          .thenAnswer((_) async => const Right(SuccessEmpty()));

      return cubit;
    },
    act: (cubit) {
      cubit.submitBriefDetails(petBreed: "test", petName: "test");
      cubit.submitAnthropometry(
          age: 12, weight: 12, description: "test", imageUrl: '');
      cubit.submitCategoryDetails(
        category: "dogs",
        sex: 'male',
      );
      cubit.createNewPetAdvertisement();
    },
    expect: () => <NewPetState>[
      const NewPetState(petBreed: "test", petName: "test"),
      const NewPetState(
          petBreed: "test",
          petName: "test",
          age: 12,
          weight: 12,
          description: "test"),
      const NewPetState(
        petBreed: "test",
        petName: "test",
        age: 12,
        weight: 12,
        description: "test",
        category: "dogs",
        sex: 'male',
      ),
      const NewPetState(
          petBreed: "test",
          petName: "test",
          age: 12,
          weight: 12,
          description: "test",
          category: "dogs",
          sex: 'male',
          fetchState: FetchState.fetching),
      const NewPetState(
          petBreed: "test",
          petName: "test",
          age: 12,
          weight: 12,
          description: "test",
          category: "dogs",
          sex: 'male',
          fetchState: FetchState.success),
      const NewPetState()
    ],
  );
}

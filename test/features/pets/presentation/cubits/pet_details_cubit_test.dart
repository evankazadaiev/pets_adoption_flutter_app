import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/features/pets/pets.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pet_details_cubit.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockGetPetDetails extends Mock implements GetPetDetails {}

void main() {
  late MockGetPetDetails mockGetPetDetails;
  late PetDetailsCubit cubit;
  setUp(() {
    mockGetPetDetails = MockGetPetDetails();
    cubit = PetDetailsCubit(getPetDetails: mockGetPetDetails);
  });

  group("fetchAnimalDetails", () {
    const testPetId = 1;
    final testPetDetails = PetModel.fromJson(json.decode(fixture("pet.json")));

    blocTest<PetDetailsCubit, PetDetailsState>(
      "should return pet details by id in success case",
      build: () {
        when(() => mockGetPetDetails.execute(testPetId))
            .thenAnswer((_) async => Right(testPetDetails));

        return cubit;
      },
      act: (cubit) => cubit.fetchAnimalDetails(testPetId),
      expect: () => <PetDetailsState>[
        const PetDetailsState.processing(),
        PetDetailsState.done(petDetails: testPetDetails),
      ],
    );

    blocTest<PetDetailsCubit, PetDetailsState>(
      "should emit failure in case of it",
      build: () {
        when(() => mockGetPetDetails.execute(testPetId))
            .thenAnswer((_) async => const Left(ServerFailure()));

        return cubit;
      },
      act: (cubit) => cubit.fetchAnimalDetails(testPetId),
      expect: () => <PetDetailsState>[
        const PetDetailsState.processing(),
        const PetDetailsState.failed(),
      ],
    );
  });
}

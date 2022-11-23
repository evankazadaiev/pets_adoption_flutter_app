import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/exceptions.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/core/network_connectivity/network_connectivity.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_api.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_cache_api.dart';
import 'package:pets_adoption/features/pets/data/repositories/pets_repository.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockPetsRemoteApi extends Mock implements IPetsRemoteApi {}

class MockPetsCacheApi extends Mock implements IPetsCacheApi {}

class MockNetworkConnectivity extends Mock implements INetworkConnectivity {}

void main() {
  late MockPetsRemoteApi mockPetsRemoteApi;
  late MockPetsCacheApi mockPetsCacheApi;
  late IPetsRepository repository;
  late MockNetworkConnectivity mockNetworkConnectivity;

  setUp(() {
    mockNetworkConnectivity = MockNetworkConnectivity();
    mockPetsRemoteApi = MockPetsRemoteApi();
    mockPetsCacheApi = MockPetsCacheApi();

    repository = PetsRepository(
        petsRemoteApi: mockPetsRemoteApi,
        petsCacheApi: mockPetsCacheApi,
        networkConnectivity: mockNetworkConnectivity);
  });

  group("getAllCategories", () {
    final List<PetCategory> categoriesList = [
      PetCategory.fromJson(jsonDecode(fixture("pet_category.json")))
    ];

    final List<Map<String, dynamic>> categoriesListJson = [
      jsonDecode(fixture("pet_category.json"))
    ];

    final String categoriesListString =
        jsonEncode([jsonDecode(fixture("pet_category.json"))]);

    group("isOnline", () {
      test("should return data when the call to remote API is successful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsCacheApi.cacheAllCategories(any()))
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchCategories())
            .thenAnswer((invocation) async => categoriesListJson);

        final result = await repository.getAllCategories();

        verify(() => mockPetsRemoteApi.fetchCategories());
        result.fold((l) => null, (r) => expect(r, equals(categoriesList)));
      });

      test(
          "should throw [ServerFailure] data when the call to remote API is unsuccessful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchCategories())
            .thenThrow(ServerException());

        final result = await repository.getAllCategories();
        verify(() => mockPetsRemoteApi.fetchCategories()).called(1);
        expect(result, equals(const Left(ServerFailure())));
      });

      test("should cache data when the call to remote API is successful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsCacheApi.cacheAllCategories(any()))
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchCategories())
            .thenAnswer((_) async => categoriesListJson);

        await repository.getAllCategories();
        verify(() => mockPetsRemoteApi.fetchCategories());
        verify(() => mockPetsCacheApi.cacheAllCategories(categoriesList));
      });
    });
    group("isOffline", () {
      test("should return last cached data if the user is offline", () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => false);
        when(() => mockPetsCacheApi.getLastCategories())
            .thenAnswer((_) async => categoriesListString);

        final result = await repository.getAllCategories();

        verify(() => mockPetsCacheApi.getLastCategories());
        result.fold((l) => null, (r) => expect(r, equals(categoriesList)));
      });

      test("should return [CacheFailure] cache doesn't contain last saved data",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => false);
        when(() => mockPetsCacheApi.getLastCategories())
            .thenThrow(CacheException());

        final result = await repository.getAllCategories();
        verify(() => mockPetsCacheApi.getLastCategories()).called(1);
        expect(result, equals(const Left(CacheFailure())));
      });
    });
  });

  group("getAllPets", () {
    // final List<PetModel> petList = [
    //   const PetModel(
    //       id: 1,
    //       categoryId: "dogs",
    //       name: "Rock",
    //       breedName: "Corgi",
    //       isFavorite: false,
    //       imageUrl: "",
    //       description: "",
    //       anthropometry: [PetAnthropometry(label: "test", value: "test")]),
    // ];

    final testAllAnimalsResponse = [jsonDecode(fixture("pet.json"))];
    final petList = testAllAnimalsResponse
        .map<PetModel>((e) => PetModel.fromJson(e))
        .toList();
    final String petListString = jsonEncode(petList);

    // final PetModel testPet = PetModel.fromJson(testPetApiResponse);

    group("isOnline", () {
      test("should return data when the call to remote API is successful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsCacheApi.cacheAllPets(any()))
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchAllAnimals())
            .thenAnswer((_) async => testAllAnimalsResponse);

        final result = await repository.getAllPets();

        verify(() => mockPetsRemoteApi.fetchAllAnimals());
        result.fold((l) => null, (r) => expect(r, equals(petList)));
        // expect(result, equals(Right(petList)));
      });

      test(
          "should throw [ServerFailure] data when the call to remote API is unsuccessful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchAllAnimals())
            .thenThrow(ServerException());

        final result = await repository.getAllPets();
        verify(() => mockPetsRemoteApi.fetchAllAnimals()).called(1);
        expect(result, equals(const Left(ServerFailure())));
      });

      test("should cache data when the call to remote API is successful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsCacheApi.cacheAllPets(any()))
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchAllAnimals())
            .thenAnswer((_) async => testAllAnimalsResponse);

        await repository.getAllPets();
        verify(() => mockPetsRemoteApi.fetchAllAnimals());
        verify(() => mockPetsCacheApi.cacheAllPets(petList));
      });
    });
    group("isOffline", () {
      test("should return last cached data if the user is offline", () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => false);
        when(() => mockPetsCacheApi.getLastPets())
            .thenAnswer((_) async => petListString);

        final result = await repository.getAllPets();

        verify(() => mockPetsCacheApi.getLastPets());
        result.fold((l) => null, (r) => expect(r, equals(petList)));
      });

      test("should return [CacheFailure] cache doesn't contain last saved data",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => false);
        when(() => mockPetsCacheApi.getLastPets()).thenThrow(CacheException());

        final result = await repository.getAllPets();
        verify(() => mockPetsCacheApi.getLastPets()).called(1);
        expect(result, equals(const Left(CacheFailure())));
      });
    });
  });

  group("getAnimalDetails", () {
    const testId = 1;
    final testPetApiResponse = jsonDecode(fixture("pet.json"));
    final PetModel testPet = PetModel.fromJson(testPetApiResponse);

    group("isOnline", () {
      test("should return data when the call to remote API is successful",
          () async {
        when(() => mockPetsRemoteApi.fetchAnimalDetails(any()))
            .thenAnswer((_) async => testPetApiResponse);

        final result = await repository.getPetDetails(1);

        verify(() => mockPetsRemoteApi.fetchAnimalDetails(testId));
        expect(result, equals(Right(testPet)));
      });

      test(
          "should throw [ServerFailure] data when the call to remote API is unsuccessful",
          () async {
        when(() => mockPetsRemoteApi.fetchAnimalDetails(any()))
            .thenThrow(ServerException());

        final result = await repository.getPetDetails(testId);
        verify(() => mockPetsRemoteApi.fetchAnimalDetails(testId)).called(1);
        expect(result, equals(const Left(ServerFailure())));
      });
    });
  });

  group("getPetsByCategory", () {
    const testCategoryId = "dogs";
    final petListResponse = [jsonDecode(fixture("pet.json"))];

    final List<PetModel> petList = [
      PetModel.fromJson(jsonDecode(fixture("pet.json")))
    ];
    // final String petListString = jsonEncode([jsonDecode(fixture("pet.json"))]);

    final String petListString =
        jsonEncode(petList.map((e) => e.toJson()).toList());

    group("isOnline", () {
      test(
          "should return data when the call to remote API with query param is successful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsCacheApi.cachePetsByCategory(any(), any()))
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchAnimalsByCategory(any()))
            .thenAnswer((_) async => petListResponse);

        final result = await repository.getPetsByCategory(testCategoryId);

        verify(() => mockPetsRemoteApi.fetchAnimalsByCategory(testCategoryId));
        result.fold((l) => null, (r) => expect(r, equals(petList)));
      });

      test(
          "should throw [ServerFailure] data when the call to remote API with query param is unsuccessful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchAnimalsByCategory(any()))
            .thenThrow(ServerException());

        final result = await repository.getPetsByCategory(testCategoryId);
        verify(() => mockPetsRemoteApi.fetchAnimalsByCategory(testCategoryId))
            .called(1);
        expect(result, equals(const Left(ServerFailure())));
      });

      test("should cache data when the call to remote API is successful",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => true);
        when(() => mockPetsCacheApi.cachePetsByCategory(any(), any()))
            .thenAnswer((_) async => true);
        when(() => mockPetsRemoteApi.fetchAnimalsByCategory(any()))
            .thenAnswer((_) async => petListResponse);

        await repository.getPetsByCategory(testCategoryId);
        verify(() => mockPetsRemoteApi.fetchAnimalsByCategory(testCategoryId));
        verify(() =>
            mockPetsCacheApi.cachePetsByCategory(testCategoryId, petList));
      });
    });

    group("isOffline", () {
      test(
          "should return last cached data by a category if the user is offline",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => false);
        when(() => mockPetsCacheApi.getLastPetsByCategory(any()))
            .thenAnswer((_) async => petListString);

        final result = await repository.getPetsByCategory(testCategoryId);

        verify(() => mockPetsCacheApi.getLastPetsByCategory(testCategoryId));
        result.fold((l) => null, (r) => expect(r, equals(petList)));
      });

      test("should return [CacheFailure] cache doesn't contain last saved data",
          () async {
        when(() => mockNetworkConnectivity.isOnline)
            .thenAnswer((_) async => false);
        when(() => mockPetsCacheApi.getLastPetsByCategory(any()))
            .thenThrow(CacheException());

        final result = await repository.getPetsByCategory(testCategoryId);
        verify(() => mockPetsCacheApi.getLastPetsByCategory(testCategoryId))
            .called(1);
        expect(result, equals(const Left(CacheFailure())));
      });
    });
  });
}

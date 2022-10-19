import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/exceptions.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_api.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late MockDioClient mockDioClient;
  late IPetsRemoteApi petsRemoteApi;
  setUp(() {
    mockDioClient = MockDioClient();
    petsRemoteApi = PetsRemoteApi(client: mockDioClient);
  });

  group("fetchCategories", () {
    final listOfCategoryModels = [
      PetCategory.fromJson(json.decode(fixture("pet_category.json")))
    ];
    final testResponseData = [json.decode(fixture("pet_category.json"))];

    test(
        "should perform a GET request on a URL with sub-path /categories and with application/json header",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 200,
            data: testResponseData,
            requestOptions: RequestOptions(path: "/categories"),
          ));

      await petsRemoteApi.fetchCategories();

      verify(() => mockDioClient.get("http://localhost:3000/categories"))
          .called(1);
    });

    test("should return Categories when the response code is 200 (success)",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 200,
            data: testResponseData,
            requestOptions: RequestOptions(path: "/categories"),
          ));

      final result = await petsRemoteApi.fetchCategories();

      expect(result, equals(listOfCategoryModels));
    });

    test("should throw Server failure is response code is not 200 (failure)",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: "/categories"),
          ));

      final call = petsRemoteApi.fetchCategories;

      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    });
  });
  group("fetchAllAnimals", () {
    final listOfPets = [PetModel.fromJson(json.decode(fixture("pet.json")))];
    final testResponseData = [json.decode(fixture("pet.json"))];

    test(
        "should perform a GET request on a URL with sub-path /pets and with application/json header",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 200,
            data: testResponseData,
            requestOptions: RequestOptions(path: "/pets"),
          ));

      await petsRemoteApi.fetchAllAnimals();

      verify(() => mockDioClient.get("http://localhost:3000/pets")).called(1);
    });

    test("should return Pets when the response code is 200 (success)",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 200,
            data: testResponseData,
            requestOptions: RequestOptions(path: "/pets"),
          ));

      final result = await petsRemoteApi.fetchAllAnimals();

      expect(result, equals(listOfPets));
    });

    test("should throw Server failure is response code is not 200 (failure)",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: "/pets"),
          ));

      final call = petsRemoteApi.fetchAllAnimals;

      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group("fetchAnimalDetails", () {
    const testId = 1;
    final testPet = PetModel.fromJson(json.decode(fixture("pet.json")));
    final testResponseData = json.decode(fixture("pet.json"));

    test(
        "should perform a GET request on a URL with sub-path /pets with query param [id] and with application/json header",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 200,
            data: testResponseData,
            requestOptions: RequestOptions(path: "/pets?id=$testId"),
          ));

      await petsRemoteApi.fetchAnimalDetails(testId);

      verify(() => mockDioClient.get("http://localhost:3000/pets?id=$testId"))
          .called(1);
    });

    test("should return Pet when the response code is 200 (success)", () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 200,
            data: testResponseData,
            requestOptions: RequestOptions(path: "/pets?id=$testId"),
          ));

      final result = await petsRemoteApi.fetchAnimalDetails(testId);

      expect(result, equals(testPet));
    });

    test("should throw Server failure is response code is not 200 (failure)",
        () async {
      when(() => mockDioClient.get(any())).thenAnswer((_) async => Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: "/pets?id=$testId"),
          ));

      final call = petsRemoteApi.fetchAnimalDetails;

      expect(() => call(testId), throwsA(const TypeMatcher<ServerException>()));
    });
  });
}

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/exceptions.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_cache_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late MockSharedPreferences mockSharedPreferences;
  late PetsCacheApi petsCacheApi;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    petsCacheApi = PetsCacheApi(sharedPreferences: mockSharedPreferences);
  });

  group("getLastCategories", () {
    final testAllCategoriesListString =
        jsonEncode([jsonDecode(fixture("pet_category.json"))]);
    final testAllCategoriesListModels = [
      PetCategory.fromJson(json.decode(fixture("pet_category.json")))
    ];

    final categoriesToCache = [
      PetCategory.fromJson(json.decode(fixture("pet_category.json")))
    ];

    final dataToCacheEncoded =
        jsonEncode(categoriesToCache.map((e) => e.toJson()).toList());

    test("should return cached categories if they are present in cache",
        () async {
      when(() => mockSharedPreferences.getString(CACHED_ALL_CATEGORIES))
          .thenReturn(testAllCategoriesListString);

      final result = await petsCacheApi.getLastCategories();

      verify(() => mockSharedPreferences.getString(CACHED_ALL_CATEGORIES))
          .called(1);
      expect(result, equals(testAllCategoriesListString));
    });

    test("should throw CacheException in case if there is no cache value",
        () async {
      when(() => mockSharedPreferences.getString(CACHED_ALL_CATEGORIES))
          .thenReturn(null);

      final call = petsCacheApi.getLastCategories;

      expect(() => call(), throwsA(const TypeMatcher<CacheException>()));
    });

    test("should call SharedPreferences to cache the data", () async {
      when(() => mockSharedPreferences.setString(CACHED_ALL_CATEGORIES, any()))
          .thenAnswer((_) async => true);
      await petsCacheApi.cacheAllCategories(categoriesToCache);

      verify(() => mockSharedPreferences.setString(
          CACHED_ALL_CATEGORIES, dataToCacheEncoded)).called(1);
    });
  });
}

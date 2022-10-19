import 'dart:convert';

import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';

abstract class IPetsCacheApi {
  Future<List<PetModel>> getLastPets();
  Future<List<PetCategory>> getLastCategories();
  Future<bool> cacheAllPets(List<PetModel> petsToCache);
  Future<bool> cachePetsByCategory(
      String categoryId, List<PetModel> petsToCache);
  Future<bool> cacheAllCategories(List<PetCategory> categoriesToCache);
  Future<List<PetModel>> getLastPetsByCategory(String categoryId);
}

const CACHED_ALL_PETS = "CACHED_ALL_PETS";

const CACHED_ALL_CATEGORIES = "CACHED_ALL_CATEGORIES";

class PetsCacheApi implements IPetsCacheApi {
  final SharedPreferences sharedPreferences;

  PetsCacheApi({required this.sharedPreferences});

  @override
  Future<bool> cacheAllPets(List<PetModel> petsToCache) async {
    final encoded = jsonEncode(petsToCache);
    return await sharedPreferences.setString(CACHED_ALL_PETS, encoded);
  }

  @override
  Future<bool> cacheAllCategories(List<PetCategory> categoriesToCache) async {
    final encoded = jsonEncode(categoriesToCache);
    return await sharedPreferences.setString(CACHED_ALL_CATEGORIES, encoded);
  }

  @override
  Future<List<PetModel>> getLastPets() {
    final jsonString = sharedPreferences.getString(CACHED_ALL_PETS);

    if (jsonString != null) {
      final List<dynamic> decoded = jsonDecode(jsonString);
      final list = decoded.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      return Future.value(list);
    }

    throw CacheException();
  }

  @override
  Future<List<PetCategory>> getLastCategories() {
    final jsonString = sharedPreferences.getString(CACHED_ALL_CATEGORIES);

    if (jsonString != null) {
      final List<dynamic> decoded = jsonDecode(jsonString);
      final list =
          decoded.map<PetCategory>((e) => PetCategory.fromJson(e)).toList();

      return Future.value(list);
    }

    throw CacheException();
  }

  @override
  Future<bool> cachePetsByCategory(
      String categoryId, List<PetModel> petsToCache) async {
    final encoded = jsonEncode(petsToCache);
    return await sharedPreferences.setString(categoryId, encoded);
  }

  @override
  Future<List<PetModel>> getLastPetsByCategory(String categoryId) {
    final jsonString = sharedPreferences.getString(categoryId);

    if (jsonString != null) {
      final List<dynamic> decoded = jsonDecode(jsonString);
      final list = decoded.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      return Future.value(list);
    }

    throw CacheException();
  }
}

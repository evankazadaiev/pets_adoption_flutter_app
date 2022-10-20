import 'dart:convert';

import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_cache_api.dart';

abstract class ICacheAdapter<T> {
  Future<List<T>> execute();
}

abstract class ICacheByCategoryAdapter<T> {
  Future<List<T>> execute(String categoryId);
}

class PetsCacheAdapter implements ICacheAdapter<PetModel> {
  final IPetsCacheApi cacheApi;

  PetsCacheAdapter(this.cacheApi);

  @override
  Future<List<PetModel>> execute() async {
    try {
      final string = await cacheApi.getLastPets();
      final List<dynamic> decoded = jsonDecode(string);
      final list = decoded.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      return Future.value(list);
    } catch (_) {
      rethrow;
    }
  }
}

class PetsByCategoryCacheAdapter implements ICacheByCategoryAdapter<PetModel> {
  final IPetsCacheApi cacheApi;

  PetsByCategoryCacheAdapter(this.cacheApi);

  @override
  Future<List<PetModel>> execute(String categoryId) async {
    try {
      final string = await cacheApi.getLastPetsByCategory(categoryId);
      final List<dynamic> decoded = jsonDecode(string);
      final list = decoded.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      return Future.value(list);
    } catch (_) {
      rethrow;
    }
  }
}

class CategoriesCacheAdapter implements ICacheAdapter<PetCategory> {
  final IPetsCacheApi cacheApi;

  CategoriesCacheAdapter(this.cacheApi);

  @override
  Future<List<PetCategory>> execute() async {
    try {
      final string = await cacheApi.getLastCategories();
      final List<dynamic> decoded = jsonDecode(string);
      final list =
          decoded.map<PetCategory>((e) => PetCategory.fromJson(e)).toList();

      return Future.value(list);
    } catch (_) {
      rethrow;
    }
  }
}

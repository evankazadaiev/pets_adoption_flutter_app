import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_api.dart';

abstract class IPetsRemoteAdapter<T> {
  Future<T> execute();
}

abstract class IPetsByIdStringRemoteAdapter<T> {
  Future<T> execute(String id);
}

abstract class IPetsByIdNumRemoteAdapter<T> {
  Future<T> execute(int id);
}

class FetchAllAnimalsAdapter implements IPetsRemoteAdapter<List<PetModel>> {
  final IPetsRemoteApi remoteApi;

  FetchAllAnimalsAdapter(this.remoteApi);

  @override
  Future<List<PetModel>> execute() async {
    try {
      final response = await remoteApi.fetchAllAnimals();

      final result =
          response.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      return Future.value(result);
    } catch (_) {
      rethrow;
    }
  }
}

class FetchAllCategoriesAdapter
    implements IPetsRemoteAdapter<List<PetCategory>> {
  final IPetsRemoteApi remoteApi;

  FetchAllCategoriesAdapter(this.remoteApi);

  @override
  Future<List<PetCategory>> execute() async {
    try {
      final response = await remoteApi.fetchCategories();

      final result =
          response.map<PetCategory>((e) => PetCategory.fromJson(e)).toList();

      return Future.value(result);
    } catch (_) {
      rethrow;
    }
  }
}

class FetchAllAnimalsByCategoryAdapter
    implements IPetsByIdStringRemoteAdapter<List<PetModel>> {
  final IPetsRemoteApi remoteApi;

  FetchAllAnimalsByCategoryAdapter(this.remoteApi);

  @override
  Future<List<PetModel>> execute(String categoryId) async {
    try {
      final response = await remoteApi.fetchAnimalsByCategory(categoryId);
      final result =
          response.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      return Future.value(result);
    } catch (_) {
      rethrow;
    }
  }
}

class FetchAnimalDetailsAdapter implements IPetsByIdNumRemoteAdapter<PetModel> {
  final IPetsRemoteApi remoteApi;

  FetchAnimalDetailsAdapter(this.remoteApi);

  @override
  Future<PetModel> execute(int petId) async {
    try {
      final response = await remoteApi.fetchAnimalDetails(petId);
      final result = PetModel.fromJson(response);

      return Future.value(result);
    } catch (_) {
      rethrow;
    }
  }
}

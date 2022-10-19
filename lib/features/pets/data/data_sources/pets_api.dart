import 'package:dio/dio.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/exceptions.dart';

abstract class IPetsRemoteApi {
  Future<List<PetModel>> fetchAllAnimals();
  Future<List<PetModel>> fetchAnimalsByCategory(String categoryId);
  Future<List<PetCategory>> fetchCategories();
  Future<PetModel> fetchAnimalDetails(int id);
}

class PetsRemoteApi implements IPetsRemoteApi {
  final Dio client;

  PetsRemoteApi({required this.client});

  @override
  Future<List<PetModel>> fetchAllAnimals() async {
    try {
      final response = await client.get("http://localhost:3000/pets");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      final result = data.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      print(result);

      return result;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }

  @override
  Future<List<PetModel>> fetchAnimalsByCategory(String categoryId) async {
    try {
      final response = await client.get("http://localhost:3000/pets",
          queryParameters: {'categoryId': categoryId});
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      final result = data.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      print(result);

      return result;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }

  @override
  Future<PetModel> fetchAnimalDetails(int id) async {
    try {
      final response = await client.get("http://localhost:3000/pets?id=$id");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      // final result = data.map<PetModel>((e) => PetModel.fromJson(e)).toList();
      final result = PetModel.fromJson(data);
      print(result);

      return result;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }

  @override
  Future<List<PetCategory>> fetchCategories() async {
    try {
      final response = await client.get("http://localhost:3000/categories");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      final result =
          data.map<PetCategory>((e) => PetCategory.fromJson(e)).toList();

      print(result);

      return result;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }
}

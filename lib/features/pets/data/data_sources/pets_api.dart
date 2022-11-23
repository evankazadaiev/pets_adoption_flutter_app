import 'package:dio/dio.dart';
import 'package:pets_adoption/core/error/exceptions.dart';

abstract class IPetsRemoteApi {
  Future<List<dynamic>> fetchAllAnimals();
  Future<List<dynamic>> fetchAnimalsByCategory(String categoryId);
  Future<List<dynamic>> fetchCategories();
  Future<Map<String, dynamic>> fetchAnimalDetails(int id);
}

class PetsRemoteApi implements IPetsRemoteApi {
  final Dio client;

  PetsRemoteApi({required this.client});

  @override
  Future<List<dynamic>> fetchAllAnimals() async {
    try {
      final response = await client.get("http://localhost:3000/pets");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      return data;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }

  @override
  Future<List<dynamic>> fetchAnimalsByCategory(String categoryId) async {
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

      return data;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> fetchAnimalDetails(int id) async {
    try {
      final response = await client.get("http://localhost:3000/pets?id=$id");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      return data;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }

  @override
  Future<List<dynamic>> fetchCategories() async {
    try {
      final response = await client.get("http://localhost:3000/categories");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      return data;
    } catch (error) {
      print(error);

      throw ServerException();
    }
  }
}

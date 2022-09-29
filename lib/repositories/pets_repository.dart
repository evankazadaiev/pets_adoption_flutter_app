import 'package:dio/dio.dart';

abstract class IPetsRepository {
  Future<List<dynamic>> fetchAllAnimals([String? categoryId]);
  Future<List<dynamic>> fetchCategories();
  Future<Map<String, dynamic>?> fetchAnimalDetails(int id);
}

class PetsRepository implements IPetsRepository {
  @override
  Future<List<dynamic>> fetchAllAnimals([String? categoryId]) async {
    try {
      final response = await Dio().get("http://localhost:3000/pets",
          queryParameters:
              categoryId != null ? {"categoryId": categoryId} : {});
      final data = response.data;
      return data;
    } catch (error) {
      // print(error);
    }

    return [];
  }

  Future<List<dynamic>> fetchCategories() async {
    try {
      final response = await Dio().get("http://localhost:3000/categories");
      final data = response.data;
      return data;
    } catch (error) {
      // print(error);
    }

    return [];
  }

  Future<Map<String, dynamic>?> fetchAnimalDetails(int id) async {
    try {
      final response = await Dio().get("http://localhost:3000/pets?id=$id");

      final data = response.data[0];
      print(data);
      return data;
    } catch (error) {
      print(error);
    }
  }
}

class NetworkException implements Exception {}

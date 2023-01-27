import 'package:dio/dio.dart';
import 'package:pets_adoption/core/error/exceptions.dart';

abstract class IPetsRemoteApi {
  Future<List<dynamic>> fetchAllAnimals();
  Future<List<dynamic>> fetchAnimalsByCategory(String categoryId);
  Future<List<dynamic>> fetchCategories();
  Future<Map<String, dynamic>> fetchAnimalDetails(String id);
  Future<void> createNewPetAdvertisement({required Map<String, dynamic> data});
}

class PetsRemoteApi implements IPetsRemoteApi {
  final Dio client;

  PetsRemoteApi({required this.client}) {
    client.options.baseUrl = 'http://localhost:3000';
  }

  @override
  Future<List<dynamic>> fetchAllAnimals() async {
    try {
      final response = await client.get("/pets");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      return data;
    } catch (error) {
      throw ServerException();
    }
  }

  @override
  Future<List<dynamic>> fetchAnimalsByCategory(String categoryId) async {
    try {
      final response = await client
          .get("/pets", queryParameters: {'categoryId': categoryId});
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      return data;
    } catch (error) {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> fetchAnimalDetails(String id) async {
    try {
      final response = await client.get("/pets?id=$id");
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
      final response = await client.get("/categories");
      final data = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (data == null) {
        throw ServerException();
      }

      return data;
    } catch (error) {
      throw ServerException();
    }
  }

  @override
  Future<void> createNewPetAdvertisement(
      {required Map<String, dynamic> data}) async {
    try {
      final response = await client.post("/pets", data: data);
      final resData = response.data;

      if (![200, 201].contains(response.statusCode)) {
        throw ServerException();
      }

      if (resData == null) {
        throw ServerException();
      }
    } catch (error) {
      throw ServerException();
    }
  }
}

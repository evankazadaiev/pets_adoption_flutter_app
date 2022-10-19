import 'package:dio/dio.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/exceptions.dart';

abstract class IAdvertisementApi {
  Future<void> createAdvertisement({required Map<String, dynamic> data});
  Future<void> editAdvertisement(String id);
  Future<void> deleteAdvertisement(String id);
}

class AdvertisementRemoteApi implements IAdvertisementApi {
  final Dio client;

  AdvertisementRemoteApi({required this.client});

  @override
  Future<void> createAdvertisement({required Map<String, dynamic> data}) async {
    try {
      final response =
          await client.post("http://localhost:3000/pets", data: data);
      final resData = response.data;

      if (response.statusCode != 200) {
        throw ServerException();
      }

      if (resData == null) {
        throw ServerException();
      }

      final result =
          resData.map<PetModel>((e) => PetModel.fromJson(e)).toList();

      print(result);

      return result;
    } catch (error) {
      print(error);

      throw ServerException();
    }
    // TODO: implement createAdvertisement
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAdvertisement(String id) async {
    // TODO: implement deleteAdvertisement
    throw UnimplementedError();
  }

  @override
  Future<void> editAdvertisement(String id) async {
    // TODO: implement editAdvertisement
    throw UnimplementedError();
  }
}

import 'package:dartz/dartz.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/features/advertisement/domain/repositories/advertisement_repository_interface.dart';

import '../../../../core/domain/entities/pet.dart';

class AdvertisementRepository implements IAdvertisementRepository {
  @override
  Future<Either<Failure, SuccessEmpty>> createAdvertisement(
      {required PetModel data}) {
    // TODO: implement createAdvertisement
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SuccessEmpty>> deleteAdvertisement(String id) {
    // TODO: implement deleteAdvertisement
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SuccessEmpty>> editAdvertisement(String id) {
    // TODO: implement editAdvertisement
    throw UnimplementedError();
  }
}

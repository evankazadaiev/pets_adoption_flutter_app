import 'package:dartz/dartz.dart';

import '../../../../core/domain/entities/pet.dart';
import '../../../../core/domain/usecases/success.dart';
import '../../../../core/error/failures.dart';

abstract class IAdvertisementRepository {
  Future<Either<Failure, SuccessEmpty>> createAdvertisement(
      {required PetModel data});
  Future<Either<Failure, SuccessEmpty>> deleteAdvertisement(String id);
  Future<Either<Failure, SuccessEmpty>> editAdvertisement(String id);
}

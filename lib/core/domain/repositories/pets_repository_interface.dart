import 'package:dartz/dartz.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/core/error/failures.dart';

abstract class IPetsRepository {
  Future<Either<Failure, List<PetModel>>> getAllPets();
  Future<Either<Failure, List<PetCategory>>> getAllCategories();
  Future<Either<Failure, PetModel>> getPetDetails(String id);
  Future<Either<Failure, List<PetModel>>> getPetsByCategory(String categoryId);

  Future<Either<Failure, SuccessEmpty>> createPetAdvertisement(
      {required PetModel data});
  Future<Either<Failure, SuccessEmpty>> deletePetAdvertisement(String id);
  Future<Either<Failure, SuccessEmpty>> editPetAdvertisement(String id);
}

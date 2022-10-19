import 'package:dartz/dartz.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/failures.dart';

abstract class IPetsRepository {
  Future<Either<Failure, List<PetModel>>> getAllPets();
  Future<Either<Failure, List<PetCategory>>> getAllCategories();
  Future<Either<Failure, PetModel>> getPetDetails(int id);
  Future<Either<Failure, List<PetModel>>> getPetsByCategory(String categoryId);
}

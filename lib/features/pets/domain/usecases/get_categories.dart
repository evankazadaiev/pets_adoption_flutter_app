import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';

class GetCategories {
  @protected
  final IPetsRepository repository;

  GetCategories(this.repository);

  Future<Either<Failure, List<PetCategory>>> execute() =>
      repository.getAllCategories();
}

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/repositories/pets_repository_interface.dart';
import 'package:pets_adoption/core/error/failures.dart';

class GetCategories {
  @protected
  final IPetsRepository repository;

  GetCategories(this.repository);

  Future<Either<Failure, List<PetCategory>>> execute() =>
      repository.getAllCategories();
}

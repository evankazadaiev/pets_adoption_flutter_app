import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/repositories/pets_repository_interface.dart';

import '../../../../core/error/failures.dart';

class GetPetDetails {
  @protected
  final IPetsRepository repository;

  GetPetDetails(this.repository);

  Future<Either<Failure, PetModel>> execute(String id) =>
      repository.getPetDetails(id);
}

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/core/error/failures.dart';

import '../../../../core/domain/repositories/pets_repository_interface.dart';

class DeletePetAdvertisement {
  @protected
  final IPetsRepository repository;

  DeletePetAdvertisement(this.repository);

  Future<Either<Failure, SuccessEmpty>> execute(String id) =>
      repository.deletePetAdvertisement(id);
}

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';

class EditPetAdvertisement {
  @protected
  final IPetsRepository repository;

  EditPetAdvertisement(this.repository);

  Future<Either<Failure, SuccessEmpty>> execute(String id) =>
      repository.editPetAdvertisement(id);
}

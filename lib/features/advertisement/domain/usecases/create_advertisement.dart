import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/features/advertisement/domain/repositories/advertisement_repository_interface.dart';

import '../../../../core/domain/entities/pet.dart';

class CreateAdvertisement {
  @protected
  final IAdvertisementRepository repository;

  CreateAdvertisement(this.repository);

  Future<Either<Failure, SuccessEmpty>> execute(PetModel data) =>
      repository.createAdvertisement(data: data);
}

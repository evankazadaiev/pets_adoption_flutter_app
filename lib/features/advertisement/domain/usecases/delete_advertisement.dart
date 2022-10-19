import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption/core/domain/usecases/success.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/features/advertisement/domain/repositories/advertisement_repository_interface.dart';

class DeleteAdvertisement {
  @protected
  final IAdvertisementRepository repository;

  DeleteAdvertisement(this.repository);

  Future<Either<Failure, SuccessEmpty>> execute(String id) =>
      repository.deleteAdvertisement(id);
}

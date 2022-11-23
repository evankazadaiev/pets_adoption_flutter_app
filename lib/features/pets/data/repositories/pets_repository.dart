import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pets_adoption/core/domain/entities/pet.dart';
import 'package:pets_adoption/core/domain/entities/pet_category.dart';
import 'package:pets_adoption/core/error/exceptions.dart';
import 'package:pets_adoption/core/error/failures.dart';
import 'package:pets_adoption/core/network_connectivity/network_connectivity.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_api.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_cache_api.dart';
import 'package:pets_adoption/features/pets/domain/repositories/pets_repository_interface.dart';

import '../adapters/pets_adapter.dart';
import '../adapters/pets_cache_adapter.dart';

class PetsRepository implements IPetsRepository {
  final IPetsRemoteApi petsRemoteApi;
  final IPetsCacheApi petsCacheApi;

  late final PetsCacheAdapter _petsAdapter;
  late final CategoriesCacheAdapter _categoriesAdapter;
  late final PetsByCategoryCacheAdapter _petsByCategoryAdapter;
  late final FetchAllAnimalsAdapter _fetchAllPetsAdapter;
  late final FetchAllCategoriesAdapter _fetchAllCategoriesAdapter;
  late final FetchAnimalDetailsAdapter _fetchAnimalDetailsAdapter;
  late final FetchAllAnimalsByCategoryAdapter _fetchAllAnimalsByCategoryAdapter;

  final INetworkConnectivity networkConnectivity;

  PetsRepository({
    required this.petsRemoteApi,
    required this.petsCacheApi,
    required this.networkConnectivity,
  })  : _petsAdapter = PetsCacheAdapter(petsCacheApi),
        _categoriesAdapter = CategoriesCacheAdapter(petsCacheApi),
        _petsByCategoryAdapter = PetsByCategoryCacheAdapter(petsCacheApi),
        _fetchAllPetsAdapter = FetchAllAnimalsAdapter(petsRemoteApi),
        _fetchAllCategoriesAdapter = FetchAllCategoriesAdapter(petsRemoteApi),
        _fetchAnimalDetailsAdapter = FetchAnimalDetailsAdapter(petsRemoteApi),
        _fetchAllAnimalsByCategoryAdapter =
            FetchAllAnimalsByCategoryAdapter(petsRemoteApi);

  @override
  Future<Either<Failure, List<PetCategory>>> getAllCategories() async {
    if (await networkConnectivity.isOnline) {
      return await _getAllCategoriesOnline();
    } else {
      return await _getAllCategoriesOffline();
    }
  }

  Future<Either<Failure, List<PetCategory>>> _getAllCategoriesOnline() async {
    try {
      final response = await _fetchAllCategoriesAdapter.execute();

      await petsCacheApi.cacheAllCategories(response);

      return Right(response);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<PetCategory>>> _getAllCategoriesOffline() async {
    try {
      final response = await _categoriesAdapter.execute();
      return Right(response);
    } on CacheException {
      return const Left(CacheFailure());
    }
  }

  Future<Either<Failure, List<PetModel>>> _getAllPetsOnline() async {
    try {
      final response = await _fetchAllPetsAdapter.execute();

      await petsCacheApi.cacheAllPets(response);

      return Right(response);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<PetModel>>> _getAllPetsOffline() async {
    try {
      final response = await _petsAdapter.execute();
      return Right(response);
    } on CacheException {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<PetModel>>> getAllPets() async {
    if (await networkConnectivity.isOnline) {
      return await _getAllPetsOnline();
    } else {
      return await _getAllPetsOffline();
    }
  }

  @override
  Future<Either<Failure, PetModel>> getPetDetails(int id) async {
    try {
      final response = await _fetchAnimalDetailsAdapter.execute(id);

      return Right(response);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<PetModel>>> getPetsByCategory(
      String categoryId) async {
    if (await networkConnectivity.isOnline) {
      return await _getPetsByCategoryOnline(categoryId);
    } else {
      return await _getPetsByCategoryOffline(categoryId);
    }
  }

  Future<Either<Failure, List<PetModel>>> _getPetsByCategoryOnline(
      String categoryId) async {
    try {
      final response =
          await _fetchAllAnimalsByCategoryAdapter.execute(categoryId);
      await petsCacheApi.cachePetsByCategory(categoryId, response);

      return Right(response);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<PetModel>>> _getPetsByCategoryOffline(
      String categoryId) async {
    try {
      final response = await _petsByCategoryAdapter.execute(categoryId);

      return Right(response);
    } on CacheException {
      return const Left(CacheFailure());
    }
  }
}

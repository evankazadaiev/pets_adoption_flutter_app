import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pets_adoption/core/network_connectivity/network_connectivity.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_api.dart';
import 'package:pets_adoption/features/pets/data/data_sources/pets_cache_api.dart';
import 'package:pets_adoption/features/pets/data/repositories/pets_repository.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pets_by_category.dart';
import 'package:pets_adoption/features/pets/pets.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pets_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class PetsModule {
  //#region DataSources
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  Dio dioClient() {
    return Dio();
  }

  @singleton
  IPetsRemoteApi petsRemoteApi(Dio client) {
    return PetsRemoteApi(client: client);
  }

  @singleton
  IPetsCacheApi petsCacheApi(SharedPreferences prefs) {
    return PetsCacheApi(sharedPreferences: prefs);
  }

  @lazySingleton
  INetworkConnectivity networkConnectivity() {
    return NetworkConnectivity();
  }
  //#endregion DataSources

  @singleton
  //#region Repositories
  IPetsRepository petsRepository(IPetsRemoteApi petsRemoteApi,
      IPetsCacheApi petsCacheApi, INetworkConnectivity networkConnectivity) {
    return PetsRepository(
        petsRemoteApi: petsRemoteApi,
        petsCacheApi: petsCacheApi,
        networkConnectivity: networkConnectivity);
  }

  //#endregion Repositories

  //#region UseCases
  @singleton
  GetCategories getCategories(
    IPetsRepository repository,
  ) {
    return GetCategories(repository);
  }

  @singleton
  GetPets getPets(
    IPetsRepository repository,
  ) {
    return GetPets(repository);
  }

  @singleton
  GetPetsByCategory getPetsByCategory(
    IPetsRepository repository,
  ) {
    return GetPetsByCategory(repository);
  }

  @singleton
  GetPetDetails getPetDetails(
    IPetsRepository repository,
  ) {
    return GetPetDetails(repository);
  }
//#endregion UseCases

//#region Cubits
  @injectable
  CategoriesCubit categoriesCubit(
    GetCategories getCategories,
  ) {
    return CategoriesCubit(getCategories: getCategories);
  }

  @injectable
  PetsCubit petsCubit(GetPets getPets, GetPetsByCategory getPetsByCategory) {
    return PetsCubit(getPets: getPets, getPetsByCategory: getPetsByCategory);
  }

//#endregion Cubits

}

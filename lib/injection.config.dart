// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import 'app/router/app_router.dart' as _i3;
import 'app/router/router_module.dart' as _i18;
import 'app/theme/cubit/app_theme_cubit.dart' as _i4;
import 'core/domain/usecases/pets/get_categories.dart' as _i12;
import 'core/modules/pets_global_module.dart' as _i21;
import 'core/modules/shared_global_module.dart' as _i19;
import 'core/network_connectivity/network_connectivity.dart' as _i6;
import 'core/presentation/cubits/pets/categories_cubit.dart' as _i17;
import 'features/pets/data/data_sources/pets_api.dart' as _i7;
import 'features/pets/data/data_sources/pets_cache_api.dart' as _i9;
import 'features/pets/domain/usecases/create_pet_advertisement.dart' as _i11;
import 'features/pets/domain/usecases/get_pets_by_category.dart' as _i13;
import 'features/pets/pets.dart' as _i10;
import 'features/pets/pets_module.dart' as _i20;
import 'features/pets/presentation/cubits/new_pet_cubit.dart' as _i14;
import 'features/pets/presentation/cubits/pet_details_cubit.dart' as _i15;
import 'features/pets/presentation/cubits/pets_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final routerModule = _$RouterModule();
  final sharedGlobalModule = _$SharedGlobalModule();
  final petsModule = _$PetsModule();
  final petsGlobalModule = _$PetsGlobalModule();
  gh.singleton<_i3.AppRouter>(routerModule.appRouter());
  gh.singleton<_i4.AppThemeCubit>(_i4.AppThemeCubit());
  gh.singleton<_i5.Dio>(sharedGlobalModule.dioClient());
  gh.lazySingleton<_i6.INetworkConnectivity>(
      () => petsModule.networkConnectivity());
  gh.singleton<_i7.IPetsRemoteApi>(petsModule.petsRemoteApi(get<_i5.Dio>()));
  await gh.factoryAsync<_i8.SharedPreferences>(
    () => sharedGlobalModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i9.IPetsCacheApi>(
      petsModule.petsCacheApi(get<_i8.SharedPreferences>()));
  gh.singleton<_i10.IPetsRepository>(petsModule.petsRepository(
    get<_i7.IPetsRemoteApi>(),
    get<_i9.IPetsCacheApi>(),
    get<_i6.INetworkConnectivity>(),
  ));
  gh.singleton<_i11.CreatePetAdvertisement>(
      petsModule.createPetAdvertisement(get<_i10.IPetsRepository>()));
  gh.singleton<_i12.GetCategories>(
      petsGlobalModule.getCategories(get<_i10.IPetsRepository>()));
  gh.singleton<_i10.GetPetDetails>(
      petsModule.getPetDetails(get<_i10.IPetsRepository>()));
  gh.singleton<_i10.GetPets>(petsModule.getPets(get<_i10.IPetsRepository>()));
  gh.singleton<_i13.GetPetsByCategory>(
      petsModule.getPetsByCategory(get<_i10.IPetsRepository>()));
  gh.factory<_i14.NewPetCubit>(
      () => petsModule.newPetCubit(get<_i11.CreatePetAdvertisement>()));
  gh.factory<_i15.PetDetailsCubit>(
      () => petsModule.petDetailsCubit(get<_i10.GetPetDetails>()));
  gh.factory<_i16.PetsCubit>(() => petsModule.petsCubit(
        get<_i10.GetPets>(),
        get<_i13.GetPetsByCategory>(),
      ));
  gh.factory<_i17.CategoriesCubit>(
      () => petsGlobalModule.categoriesCubit(get<_i12.GetCategories>()));
  return get;
}

class _$RouterModule extends _i18.RouterModule {}

class _$SharedGlobalModule extends _i19.SharedGlobalModule {}

class _$PetsModule extends _i20.PetsModule {}

class _$PetsGlobalModule extends _i21.PetsGlobalModule {}

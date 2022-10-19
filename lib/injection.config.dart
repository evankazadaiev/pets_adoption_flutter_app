// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'app/theme/cubit/app_theme_cubit.dart' as _i3;
import 'core/network_connectivity/network_connectivity.dart' as _i5;
import 'features/pets/data/data_sources/pets_api.dart' as _i6;
import 'features/pets/data/data_sources/pets_cache_api.dart' as _i8;
import 'features/pets/domain/usecases/get_pets_by_category.dart' as _i10;
import 'features/pets/pets.dart' as _i9;
import 'features/pets/pets_module.dart' as _i12;
import 'features/pets/presentation/cubits/pets_cubit.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  final petsModule = _$PetsModule();
  gh.singleton<_i3.AppThemeCubit>(_i3.AppThemeCubit());
  gh.singleton<_i4.Dio>(petsModule.dioClient());
  gh.lazySingleton<_i5.INetworkConnectivity>(
      () => petsModule.networkConnectivity());
  gh.singleton<_i6.IPetsRemoteApi>(petsModule.petsRemoteApi(get<_i4.Dio>()));
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => petsModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i8.IPetsCacheApi>(
      petsModule.petsCacheApi(get<_i7.SharedPreferences>()));
  gh.singleton<_i9.IPetsRepository>(petsModule.petsRepository(
    get<_i6.IPetsRemoteApi>(),
    get<_i8.IPetsCacheApi>(),
    get<_i5.INetworkConnectivity>(),
  ));
  gh.singleton<_i9.GetCategories>(
      petsModule.getCategories(get<_i9.IPetsRepository>()));
  gh.singleton<_i9.GetPetDetails>(
      petsModule.getPetDetails(get<_i9.IPetsRepository>()));
  gh.singleton<_i9.GetPets>(petsModule.getPets(get<_i9.IPetsRepository>()));
  gh.singleton<_i10.GetPetsByCategory>(
      petsModule.getPetsByCategory(get<_i9.IPetsRepository>()));
  gh.factory<_i11.PetsCubit>(() => petsModule.petsCubit(
        get<_i9.GetPets>(),
        get<_i10.GetPetsByCategory>(),
      ));
  gh.factory<_i9.CategoriesCubit>(
      () => petsModule.categoriesCubit(get<_i9.GetCategories>()));
  return get;
}

class _$PetsModule extends _i12.PetsModule {}

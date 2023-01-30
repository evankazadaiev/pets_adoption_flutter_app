import 'package:injectable/injectable.dart';
import 'package:pets_adoption/features/pets/pets.dart';

import '../domain/usecases/pets/get_categories.dart';
import '../presentation/cubits/pets/categories_cubit.dart';

@module
abstract class PetsGlobalModule {
  //#region DataSources

  //#endregion DataSources

  //#region Repositories

  //#endregion Repositories

  //#region UseCases
  @singleton
  GetCategories getCategories(
    IPetsRepository repository,
  ) {
    return GetCategories(repository);
  }

//#endregion UseCases

//#region Cubits
  @injectable
  CategoriesCubit categoriesCubit(
    GetCategories getCategories,
  ) {
    return CategoriesCubit(getCategories: getCategories);
  }
//#endregion Cubits
}

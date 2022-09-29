part of 'home_screen_cubit.dart';

enum FetchState { initial, fetching, success, failed }

@freezed
class HomeScreenState with _$HomeScreenState {
  // const factory HomeScreenState.initial(
  //     {@Default([]) List<PetModel?> list,
  //     @Default([]) List<CategoryModel?> categories}) = _HomeScreenStateInitial;
  // const factory HomeScreenState.loading(
  //     {@Default([]) List<PetModel?> list,
  //     @Default([]) List<CategoryModel?> categories}) = _HomeScreenStateLoading;
  // const factory HomeScreenState.loaded(
  //     {required List<PetModel> list,
  //     required List<CategoryModel> categories}) = _HomeScreenStateLoaded;
  // const factory HomeScreenState.error() = _HomeScreenStateError;

  const factory HomeScreenState(
          {@Default(null) String? selectedCategoryId,
          @Default(<PetModel>[]) List<PetModel> list,
          @Default(<CategoryModel>[]) List<CategoryModel> categories,
          @Default(FetchState.initial) FetchState fetchPetsState,
          @Default(FetchState.initial) FetchState fetchCategoriesState}) =
      _HomeScreenState;
}

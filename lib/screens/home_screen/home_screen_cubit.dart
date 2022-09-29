import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/category_model/category_model.dart';
import '../../models/pet_model.dart';
import '../../repositories/pets_repository.dart';

part 'home_screen_cubit.freezed.dart';
part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final PetsRepository _petsRepository;

  HomeScreenCubit(this._petsRepository) : super(const HomeScreenState());

  fetchAnimals([String? selectedCategoryId]) async {
    print(selectedCategoryId);
    try {
      emit(state.copyWith(fetchPetsState: FetchState.fetching));
      await Future.delayed(const Duration(seconds: 3));
      final pets = await _petsRepository.fetchAllAnimals(selectedCategoryId);
      final result = pets.map((e) {
        final map = Map<String, dynamic>.from(e);
        final pet = PetModel.fromJson(map);
        return pet;
      }).toList();
      emit(state.copyWith(fetchPetsState: FetchState.success, list: result));
      // if (state is _HomeScreenStateLoaded) {
      //   emit((state as _HomeScreenStateLoaded).copyWith(list: result));
      // } else {
      //   emit(HomeScreenState.loaded(list: result, categories: []));
      // }
    } catch (error) {
      print(error);
      // emit(const HomeScreenState.error());
    }
  }

  fetchCategories() async {
    try {
      emit(state.copyWith(fetchCategoriesState: FetchState.fetching));
      final categories = await _petsRepository.fetchCategories();
      final result = categories.map((e) {
        final map = Map<String, dynamic>.from(e);
        final category = CategoryModel.fromJson(map);
        return category;
      }).toList();

      emit(state.copyWith(
          fetchCategoriesState: FetchState.success, categories: result));
    } catch (error) {}
  }

  fetchAnimalsAndCategories() async {
    try {
      emit(state.copyWith(
          fetchCategoriesState: FetchState.fetching,
          fetchPetsState: FetchState.fetching));
      await Future.delayed(Duration(seconds: 3));
      final categoriesResponse = await _petsRepository.fetchCategories();
      final animalsResponse =
          await _petsRepository.fetchAllAnimals(state.selectedCategoryId);
      final categories = categoriesResponse.map((e) {
        final map = Map<String, dynamic>.from(e);
        final category = CategoryModel.fromJson(map);
        return category;
      }).toList();
      final animals = animalsResponse.map((e) {
        final map = Map<String, dynamic>.from(e);
        final pet = PetModel.fromJson(map);
        return pet;
      }).toList();
      emit(state.copyWith(
          list: animals,
          categories: categories,
          fetchCategoriesState: FetchState.success,
          fetchPetsState: FetchState.success));
      // emit(HomeScreenState.loaded(list: animals, categories: categories));
    } catch (error) {
      print(error);
    }
  }

  selectAnimalsCategory([String? categoryId]) {
    emit(state.copyWith(selectedCategoryId: categoryId));
  }
}

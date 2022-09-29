import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_adoption/models/pet_model.dart';

import '../../repositories/pets_repository.dart';

part 'pet_screen_cubit.freezed.dart';
part 'pet_screen_state.dart';

class PetScreenCubit extends Cubit<PetScreenState> {
  final PetsRepository _petsRepository;

  PetScreenCubit(this._petsRepository) : super(const PetScreenState.initial());

  fetchAnimalDetails(int petId) async {
    try {
      emit(PetScreenState.loading());
      await Future.delayed(const Duration(seconds: 3));
      final petDetails = await _petsRepository.fetchAnimalDetails(petId);
      print(petDetails);
      if (petDetails != null) {
        emit(PetScreenState.loaded(petDetails: PetModel.fromJson(petDetails)));
      }
      // emit();
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
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_adoption/core/domain/enums/fetch_state.dart';

part 'new_pet_cubit.freezed.dart';

@freezed
class NewPetState with _$NewPetState {
  const factory NewPetState(
      {@Default('') String? petName,
      @Default('') String? petBreed,
      @Default('') String? sex,
      @Default('') String? category,
      @Default(null) int? weight,
      @Default(null) int? age,
      @Default('') String? description,
      @Default(FetchState.initial) FetchState fetchState}) = _NewPetState;
}

class NewPetCubit extends Cubit<NewPetState> {
  NewPetCubit() : super(const NewPetState());

  submitCategoryDetails({required String category, required String sex}) {
    emit(state.copyWith(sex: sex, category: category));
  }

  submitBriefDetails({required String petName, required String petBreed}) {
    emit(state.copyWith(petName: petName, petBreed: petBreed));
  }

  submitAnthropometry(
      {required int age, required int weight, required String description}) {
    emit(state.copyWith(age: age, weight: weight, description: description));
    print(state);
  }

  reset() => const NewPetState();
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/enums/fetch_state.dart';
import 'package:pets_adoption/features/pets/domain/usecases/create_pet_advertisement.dart';

part 'new_pet_cubit.freezed.dart';

@freezed
class NewPetState with _$NewPetState {
  const factory NewPetState(
      {@Default('') String petName,
      @Default('') String petBreed,
      @Default('') String sex,
      @Default('') String category,
      @Default('') String imageUrl,
      @Default(0) int? weight,
      @Default(0) int? age,
      @Default('') String description,
      @Default(FetchState.initial) FetchState fetchState}) = _NewPetState;
}

class NewPetCubit extends Cubit<NewPetState> {
  final CreatePetAdvertisement createPetAdvertisement;

  NewPetCubit({required this.createPetAdvertisement})
      : super(const NewPetState());

  void submitCategoryDetails({required String category, required String sex}) {
    emit(state.copyWith(sex: sex, category: category));
  }

  void submitBriefDetails({required String petName, required String petBreed}) {
    emit(state.copyWith(petName: petName, petBreed: petBreed));
  }

  void submitAnthropometry(
      {required int age,
      required String imageUrl,
      required int weight,
      required String description}) {
    emit(state.copyWith(
        age: age,
        imageUrl: imageUrl,
        weight: weight,
        description: description));
  }

  Future<void> createNewPetAdvertisement() async {
    final newPet = PetModel(
        categoryId: state.category,
        name: state.petName,
        breedName: state.petBreed,
        isFavorite: false,
        imageUrl: state.imageUrl,
        description: state.description,
        anthropometry: [
          PetAnthropometry(label: 'Sex', value: state.sex),
          PetAnthropometry(label: 'Weight', value: state.weight.toString()),
          PetAnthropometry(label: 'Age', value: state.age.toString()),
        ],
        id: '');

    emit(state.copyWith(fetchState: FetchState.fetching));
    final res = await createPetAdvertisement.execute(newPet);

    res.fold((_) => emit(state.copyWith(fetchState: FetchState.failed)), (_) {
      emit(
        state.copyWith(
          fetchState: FetchState.success,
        ),
      );

      _reset();
    });
  }

  _reset() => emit(const NewPetState());

  reset() => _reset();
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/enums/fetch_state.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pets.dart';
import 'package:pets_adoption/features/pets/domain/usecases/get_pets_by_category.dart';

part 'pets_cubit.freezed.dart';

@freezed
class PetsState with _$PetsState {
  const factory PetsState(
      {@Default(<PetModel>[]) List<PetModel> pets,
      @Default(FetchState.initial) FetchState fetchState}) = _PetsState;
}

class PetsCubit extends Cubit<PetsState> {
  final GetPets getPets;
  final GetPetsByCategory getPetsByCategory;

  PetsCubit({required this.getPets, required this.getPetsByCategory})
      : super(const PetsState());

  Future<void> getAllPets() async {
    emit(state.copyWith(fetchState: FetchState.fetching));
    final res = await getPets.execute();

    res.fold(
      (failure) => emit(state.copyWith(fetchState: FetchState.failed)),
      (pets) => emit(
        state.copyWith(
          fetchState: FetchState.success,
          pets: pets,
        ),
      ),
    );
  }

  Future<void> getAllPetsByCategory(String categoryId) async {
    emit(state.copyWith(fetchState: FetchState.fetching));
    final res = await getPetsByCategory.execute(categoryId);

    res.fold(
      (failure) => emit(state.copyWith(fetchState: FetchState.failed)),
      (pets) => emit(
        state.copyWith(
          fetchState: FetchState.success,
          pets: pets,
        ),
      ),
    );
  }
}

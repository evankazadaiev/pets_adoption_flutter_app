import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';

import '../../domain/usecases/get_pet_details.dart';

part 'pet_details_cubit.freezed.dart';

@freezed
class PetDetailsState with _$PetDetailsState {
  const factory PetDetailsState.initial() = _PetDetailsStateInitial;
  const factory PetDetailsState.processing() = _PetDetailsStateLoading;
  const factory PetDetailsState.done({required PetModel petDetails}) =
      _PetDetailsStateLoaded;
  const factory PetDetailsState.failed() = _PetDetailsStateError;
}

class PetDetailsCubit extends Cubit<PetDetailsState> {
  final GetPetDetails getPetDetails;

  PetDetailsCubit({required this.getPetDetails})
      : super(const PetDetailsState.initial());

  fetchAnimalDetails(int petId) async {
    emit(const PetDetailsState.processing());
    await Future.delayed(const Duration(seconds: 3));
    final res = await getPetDetails.execute(petId);
    // print(petDetails);
    // if (petDetails != null) {
    //   emit(PetScreenState.loaded(petDetails: PetModel.fromJson(petDetails)));
    // }
    res.fold(
      (failure) => emit(const PetDetailsState.failed()),
      (details) => emit(PetDetailsState.done(petDetails: details)),
    );
  }

  reset() => emit(const PetDetailsState.initial());
}

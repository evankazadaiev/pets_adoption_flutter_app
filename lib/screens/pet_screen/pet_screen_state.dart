part of 'pet_screen_cubit.dart';

@freezed
class PetScreenState with _$PetScreenState {
  const factory PetScreenState.initial() = _PetScreenStateInitial;
  const factory PetScreenState.loading() = _PetScreenStateLoading;
  const factory PetScreenState.loaded({required PetModel petDetails}) =
      _PetScreenStateLoaded;
  const factory PetScreenState.error() = _PetScreenStateError;
}

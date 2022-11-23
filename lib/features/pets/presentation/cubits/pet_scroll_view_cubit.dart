import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_scroll_view_cubit.freezed.dart';

@freezed
class PetScrollViewState with _$PetScrollViewState {
  const factory PetScrollViewState({@Default(false) bool isButtonShown}) =
      _PetScrollViewState;
}

class PetScrollViewCubit extends Cubit<PetScrollViewState> {
  PetScrollViewCubit() : super(const PetScrollViewState());

  toggleButtonAppearance(bool isShown) {
    emit(state.copyWith(isButtonShown: isShown));
  }
}

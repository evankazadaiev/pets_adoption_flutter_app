import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_scroll_view_cubit.freezed.dart';
part 'pet_scroll_view_state.dart';

class PetScrollViewCubit extends Cubit<PetScrollViewState> {
  PetScrollViewCubit() : super(const PetScrollViewState());


  toggleButtonAppearance(bool isShown) {
    emit(state.copyWith(isButtonShown: isShown));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_adoption/core/domain/entities/entities.dart';
import 'package:pets_adoption/core/domain/enums/fetch_state.dart';
import 'package:pets_adoption/core/domain/usecases/pets/get_categories.dart';

part 'categories_cubit.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState(
      {@Default(null) String? selectedId,
      @Default(<PetCategory>[]) List<PetCategory> categories,
      @Default(FetchState.initial) FetchState fetchState}) = _CategoriesState;
}

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategories getCategories;

  CategoriesCubit({required this.getCategories})
      : super(const CategoriesState());

  handleSelectId([String? id]) {
    emit(state.copyWith(selectedId: id));
  }

  Future<void> getAllCategories() async {
    emit(state.copyWith(fetchState: FetchState.fetching));
    final res = await getCategories.execute();

    res.fold(
      (failure) => emit(state.copyWith(fetchState: FetchState.failed)),
      (categories) => emit(
        state.copyWith(
          fetchState: FetchState.success,
          categories: categories,
        ),
      ),
    );
  }
}

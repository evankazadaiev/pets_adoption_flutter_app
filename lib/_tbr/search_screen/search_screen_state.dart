part of 'search_screen_cubit.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState({
    @Default(null) PlaceLocation? userGeolocation,
  }) = _SearchScreenState;
}

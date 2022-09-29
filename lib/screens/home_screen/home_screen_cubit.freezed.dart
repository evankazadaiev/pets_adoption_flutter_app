// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  String? get selectedCategoryId => throw _privateConstructorUsedError;
  List<PetModel> get list => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  FetchState get fetchPetsState => throw _privateConstructorUsedError;
  FetchState get fetchCategoriesState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
  $Res call(
      {String? selectedCategoryId,
      List<PetModel> list,
      List<CategoryModel> categories,
      FetchState fetchPetsState,
      FetchState fetchCategoriesState});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;

  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? list = freezed,
    Object? categories = freezed,
    Object? fetchPetsState = freezed,
    Object? fetchCategoriesState = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategoryId: selectedCategoryId == freezed
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      fetchPetsState: fetchPetsState == freezed
          ? _value.fetchPetsState
          : fetchPetsState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      fetchCategoriesState: fetchCategoriesState == freezed
          ? _value.fetchCategoriesState
          : fetchCategoriesState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_HomeScreenStateCopyWith(
          _$_HomeScreenState value, $Res Function(_$_HomeScreenState) then) =
      __$$_HomeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? selectedCategoryId,
      List<PetModel> list,
      List<CategoryModel> categories,
      FetchState fetchPetsState,
      FetchState fetchCategoriesState});
}

/// @nodoc
class __$$_HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res>
    implements _$$_HomeScreenStateCopyWith<$Res> {
  __$$_HomeScreenStateCopyWithImpl(
      _$_HomeScreenState _value, $Res Function(_$_HomeScreenState) _then)
      : super(_value, (v) => _then(v as _$_HomeScreenState));

  @override
  _$_HomeScreenState get _value => super._value as _$_HomeScreenState;

  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? list = freezed,
    Object? categories = freezed,
    Object? fetchPetsState = freezed,
    Object? fetchCategoriesState = freezed,
  }) {
    return _then(_$_HomeScreenState(
      selectedCategoryId: selectedCategoryId == freezed
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      fetchPetsState: fetchPetsState == freezed
          ? _value.fetchPetsState
          : fetchPetsState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      fetchCategoriesState: fetchCategoriesState == freezed
          ? _value.fetchCategoriesState
          : fetchCategoriesState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  const _$_HomeScreenState(
      {this.selectedCategoryId = null,
      final List<PetModel> list = const <PetModel>[],
      final List<CategoryModel> categories = const <CategoryModel>[],
      this.fetchPetsState = FetchState.initial,
      this.fetchCategoriesState = FetchState.initial})
      : _list = list,
        _categories = categories;

  @override
  @JsonKey()
  final String? selectedCategoryId;
  final List<PetModel> _list;
  @override
  @JsonKey()
  List<PetModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final FetchState fetchPetsState;
  @override
  @JsonKey()
  final FetchState fetchCategoriesState;

  @override
  String toString() {
    return 'HomeScreenState(selectedCategoryId: $selectedCategoryId, list: $list, categories: $categories, fetchPetsState: $fetchPetsState, fetchCategoriesState: $fetchCategoriesState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenState &&
            const DeepCollectionEquality()
                .equals(other.selectedCategoryId, selectedCategoryId) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other.fetchPetsState, fetchPetsState) &&
            const DeepCollectionEquality()
                .equals(other.fetchCategoriesState, fetchCategoriesState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedCategoryId),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(fetchPetsState),
      const DeepCollectionEquality().hash(fetchCategoriesState));

  @JsonKey(ignore: true)
  @override
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      __$$_HomeScreenStateCopyWithImpl<_$_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {final String? selectedCategoryId,
      final List<PetModel> list,
      final List<CategoryModel> categories,
      final FetchState fetchPetsState,
      final FetchState fetchCategoriesState}) = _$_HomeScreenState;

  @override
  String? get selectedCategoryId;
  @override
  List<PetModel> get list;
  @override
  List<CategoryModel> get categories;
  @override
  FetchState get fetchPetsState;
  @override
  FetchState get fetchCategoriesState;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

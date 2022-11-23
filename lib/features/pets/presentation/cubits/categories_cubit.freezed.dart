// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesState {
  String? get selectedId => throw _privateConstructorUsedError;
  List<PetCategory> get categories => throw _privateConstructorUsedError;
  FetchState get fetchState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {String? selectedId,
      List<PetCategory> categories,
      FetchState fetchState});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedId = freezed,
    Object? categories = null,
    Object? fetchState = null,
  }) {
    return _then(_value.copyWith(
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<PetCategory>,
      fetchState: null == fetchState
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesStateCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$_CategoriesStateCopyWith(
          _$_CategoriesState value, $Res Function(_$_CategoriesState) then) =
      __$$_CategoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? selectedId,
      List<PetCategory> categories,
      FetchState fetchState});
}

/// @nodoc
class __$$_CategoriesStateCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesState>
    implements _$$_CategoriesStateCopyWith<$Res> {
  __$$_CategoriesStateCopyWithImpl(
      _$_CategoriesState _value, $Res Function(_$_CategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedId = freezed,
    Object? categories = null,
    Object? fetchState = null,
  }) {
    return _then(_$_CategoriesState(
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<PetCategory>,
      fetchState: null == fetchState
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
    ));
  }
}

/// @nodoc

class _$_CategoriesState implements _CategoriesState {
  const _$_CategoriesState(
      {this.selectedId = null,
      final List<PetCategory> categories = const <PetCategory>[],
      this.fetchState = FetchState.initial})
      : _categories = categories;

  @override
  @JsonKey()
  final String? selectedId;
  final List<PetCategory> _categories;
  @override
  @JsonKey()
  List<PetCategory> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final FetchState fetchState;

  @override
  String toString() {
    return 'CategoriesState(selectedId: $selectedId, categories: $categories, fetchState: $fetchState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesState &&
            (identical(other.selectedId, selectedId) ||
                other.selectedId == selectedId) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.fetchState, fetchState) ||
                other.fetchState == fetchState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedId,
      const DeepCollectionEquality().hash(_categories), fetchState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesStateCopyWith<_$_CategoriesState> get copyWith =>
      __$$_CategoriesStateCopyWithImpl<_$_CategoriesState>(this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {final String? selectedId,
      final List<PetCategory> categories,
      final FetchState fetchState}) = _$_CategoriesState;

  @override
  String? get selectedId;
  @override
  List<PetCategory> get categories;
  @override
  FetchState get fetchState;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesStateCopyWith<_$_CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

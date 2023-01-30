import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pets_adoption/app/theme/cubit/app_theme_cubit.dart';
import 'package:pets_adoption/app/theme/models/app_palette.dart';
import 'package:pets_adoption/constants/sizes.dart';
import 'package:pets_adoption/core/domain/enums/fetch_state.dart';
import 'package:pets_adoption/core/presentation/cubits/pets/categories_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pets_cubit.dart';

class CategoriesSlider extends StatelessWidget {
  final double titleMargin = 15.0;
  final void Function([String? category]) handleSelection;

  const CategoriesSlider({required this.handleSelection});

  // _buildPetCategory(BuildContext ctx, PetCategory e, state) {
  //   return CategoryListItem(
  //     active: e.id == state.selectedId,
  //     iconType: IconDataSolid(int.parse(e.iconCodePoint)),
  //     onSelectCategory: () => ctx.read<CategoriesCubit>().handleSelectId(e.id),
  //   );
  // }

  _handleCategorySelect(BuildContext ctx, String categoryId) async {
    BlocProvider.of<CategoriesCubit>(ctx, listen: false)
        .handleSelectId(categoryId);
    await BlocProvider.of<PetsCubit>(ctx, listen: false)
        .getAllPetsByCategory(categoryId);
  }

  _handlePressViewAll(BuildContext ctx) {
    final id = BlocProvider.of<CategoriesCubit>(ctx).state.selectedId;
    if (id != null) {
      return () async {
        BlocProvider.of<CategoriesCubit>(ctx, listen: false).handleSelectId();
        await BlocProvider.of<PetsCubit>(ctx, listen: false).getAllPets();
      };
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: titleMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pet categories",
                style: AppTheme.of(context).textTheme.caption1Medium,
              ),
              BlocBuilder<CategoriesCubit, CategoriesState>(
                builder: (ctx, state) {
                  return TextButton(
                      style: TextButton.styleFrom(
                          textStyle: AppTheme.of(ctx)
                              .textTheme
                              .caption4Bold
                              .copyWith(
                                  color: AppTheme.of(ctx).colorTheme.accent),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero),
                      onPressed: _handlePressViewAll(ctx),
                      child: const Text(
                        "View all",
                      ));
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 70,
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (ctx, state) {
              switch (state.fetchState) {
                case FetchState.fetching:
                  return const CircularProgressIndicator();
                case FetchState.success:
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: titleMargin - 5,
                      ),
                      ...state.categories.map((e) => CategoryListItem(
                            active: e.id == state.selectedId,
                            iconType: IconDataSolid(int.parse(e.iconCodePoint)),
                            onSelectCategory: () =>
                                _handleCategorySelect(ctx, e.id),
                          )),
                      // ...state.categories.map((e) => _buildSkeleton(ctx)),
                      SizedBox(
                        width: titleMargin,
                      )
                    ],
                  );
                case FetchState.initial:
                  return Container();
                case FetchState.failed:
                  return Container();
              }
            },
          ),
        ),
      ],
    );
  }
}

class CategoryListItem extends StatelessWidget {
  final bool active;
  final IconData? iconType;
  final Function onSelectCategory;
  const CategoryListItem(
      {Key? key,
      this.active = false,
      this.iconType,
      required this.onSelectCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Card(
          elevation: 2,
          color: active ? Palette.white : Palette.violetGlaucous,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1, color: active ? Palette.violetDarker : Palette.white),
            borderRadius: BorderRadius.circular(18),
          ),
          child: InkWell(
            onTap: () => onSelectCategory(),
            borderRadius: BorderRadius.circular(18),
            child: Icon(
              iconType ?? Icons.pets_outlined,
              size: Sizes.iconLarge,
              color: active ? Palette.violetDarker : Palette.white,
            ),
          )),
    );
  }
}

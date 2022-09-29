import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pets_adoption/screens/home_screen/home_screen_cubit.dart';

import '../../models/category_model/category_model.dart';

class CategoriesSlider extends StatelessWidget {
  final double titleRowMarginValue;
  final List<CategoryModel> categories;

  const CategoriesSlider(
      {required this.categories, this.titleRowMarginValue = 15.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: titleRowMarginValue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Pet categories",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              BlocBuilder<HomeScreenCubit, HomeScreenState>(
                builder: (context, state) {
                  return TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white70,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          textStyle: const TextStyle(
                              fontSize: 14, color: Colors.white70),
                          padding: EdgeInsets.zero),
                      onPressed: state.selectedCategoryId == null
                          ? null
                          : () => BlocProvider.of<HomeScreenCubit>(context)
                              .selectAnimalsCategory(null),
                      child: const Text("View all"));
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
          child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
            builder: (context, state) {
              switch (state.fetchCategoriesState) {
                case FetchState.fetching:
                  return const CircularProgressIndicator();
                case FetchState.success:
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: titleRowMarginValue - 5,
                      ),
                      ...categories.map((e) => CategoryListItem(
                          active: state.selectedCategoryId == e.id,
                          iconType: IconDataSolid(int.parse(e.iconCodePoint)),
                          onSelectCategory: () =>
                              BlocProvider.of<HomeScreenCubit>(context)
                                  .selectAnimalsCategory(e.id))),
                      SizedBox(
                        width: titleRowMarginValue,
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
          color: active
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.secondary, width: 1),
            borderRadius: BorderRadius.circular(18),
            //set border radius more than 50% of height and width to make circle
          ),
          child: InkWell(
            onTap: () => onSelectCategory(),
            borderRadius: BorderRadius.circular(18),
            splashColor: Theme.of(context).primaryColor,
            child: Icon(
              iconType ?? Icons.pets_outlined,
              color: active
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.secondary,
              size: 36,
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pets_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/categories_slider.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/greeting_text.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/search_input.dart';
import 'package:pets_adoption/injection.dart';

import '../../../../app/theme/cubit/app_theme_cubit.dart';
import '../cubits/categories_cubit.dart';
import '../widgets/pets_sliver_grid.dart';

class PetsHomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const PetsHomeScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).colorTheme.backgroundSurface,
      child: SafeArea(
          child: MultiBlocProvider(
        providers: [
          BlocProvider<CategoriesCubit>(
              create: (_) => di.get()..getAllCategories()),
          BlocProvider<PetsCubit>(create: (_) => di.get()..getAllPets())
        ],
        child: const PetsHomeScreenContent(),
      )),
    );
  }
}
//
// BlocProvider<CategoriesCubit>(
// create: (_) => di.get()..getAllCategories(),
// child: BlocProvider<PetsCubit>(
// create: (_) => di.get()..getAllPets(),
// child: const PetsHomeScreenContent(),
// ),
// ),

class PetsHomeScreenContent extends StatelessWidget {
  const PetsHomeScreenContent({
    Key? key,
  }) : super(key: key);

  _onRefreshSwipe(BuildContext ctx) async {
    final id =
        BlocProvider.of<CategoriesCubit>(ctx, listen: false).state.selectedId;
    if (id != null) {
      BlocProvider.of<PetsCubit>(ctx, listen: false).getAllPetsByCategory(id);

      return;
    }

    BlocProvider.of<PetsCubit>(ctx, listen: false).getAllPets();
  }

  _onCategorySelection(String? category, BuildContext ctx) async {
    if (category != null) {
      BlocProvider.of<PetsCubit>(ctx, listen: false)
          .getAllPetsByCategory(category);

      return;
    }

    BlocProvider.of<PetsCubit>(ctx, listen: false).getAllPets();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetsCubit, PetsState>(
      builder: (ctx, state) {
        return RefreshIndicator(
          onRefresh: () => _onRefreshSwipe(ctx),
          child: Container(
            color: AppTheme.of(ctx).colorTheme.backgroundWindowBackground,
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverAppBar(
                  floating: true,
                  stretch: true,
                  actions: const [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                        ))
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      constraints: const BoxConstraints.expand(),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: const [GreetingText(), SearchInput()],
                              ),
                            ),
                            CategoriesSlider(
                                handleSelection: ([String? category]) =>
                                    _onCategorySelection(category, ctx))
                          ],
                        ),
                      ),
                    ),
                  ),
                  expandedHeight: 280,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: AppTheme.of(ctx).colorTheme.backgroundSurface,
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      child: Container(
                        color: AppTheme.of(ctx)
                            .colorTheme
                            .backgroundWindowBackground,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        height: 50,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Popular Pets",
                              textAlign: TextAlign.left,
                              style: AppTheme.of(ctx).textTheme.h6Bold.copyWith(
                                  color:
                                      AppTheme.of(ctx).colorTheme.textPrimary),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                PetsSliverGrid(),
                const PetsSliverGridLoading(),
                // SliverFillRemaining(
                //     hasScrollBody: false, child: Container()),
              ],
            ),
          ),
        );
      },
    );
  }
}

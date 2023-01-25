import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/core/presentation/templates/sliver_template.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pets_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/categories_slider.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/greeting_text.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/search_input.dart';
import 'package:pets_adoption/injection.dart';

import '../../../../app/theme/cubit/app_theme_cubit.dart';
import '../cubits/categories_cubit.dart';
import '../widgets/pets_sliver_grid.dart';

class PetsHomeScreen extends StatelessWidget {
  static const String name = 'PetsHomeScreenTab';
  static const String path = 'PetsHomeScreenTab';

  static void open(
    BuildContext context, {
    bool replace = false,
  }) {
    if (replace) {
      context.router.replaceNamed(path);
    } else {
      if (context.router.current.path != path) {
        context.router.pushNamed(path);
      }
    }
  }

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
        child: PetsHomeScreenContent(),
      )),
    );
  }
}

class PetsHomeScreenContent extends StatelessWidget {
  _onRefreshSwipe(BuildContext ctx) async {
    final id = ctx.read<CategoriesCubit>().state.selectedId;
    if (id != null) {
      ctx.read<PetsCubit>().getAllPetsByCategory(id);
      BlocProvider.of<PetsCubit>(ctx, listen: false).getAllPetsByCategory(id);

      return;
    }

    BlocProvider.of<PetsCubit>(ctx, listen: false).getAllPets();
  }

  _onCategorySelection(String? category, BuildContext ctx) async {
    if (category != null) {
      ctx.read<PetsCubit>().getAllPetsByCategory(category);

      return;
    }

    ctx.read<PetsCubit>().getAllPets();
  }

  @override
  Widget build(BuildContext context) {
    return SliverTemplate(
        spaceBarContent: BlocBuilder<PetsCubit, PetsState>(
            builder: (ctx, state) => RefreshIndicator(
                onRefresh: () => _onRefreshSwipe(ctx),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: const [GreetingText(), SearchInput()],
                      ),
                    ),
                    CategoriesSlider(
                        handleSelection: ([String? category]) =>
                            _onCategorySelection(category, ctx))
                  ],
                ))),
        bodyTitle: "Popular Pets",
        bodyContent: [PetsSliverGrid(), const PetsSliverGridLoading()]);
  }
}

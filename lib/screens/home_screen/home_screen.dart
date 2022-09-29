import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/screens/home_screen/home_screen_cubit.dart';

import '../../widgets/categories_slider/categories_slider.dart';
import '../../widgets/greeting_text/greeting_text.dart';
import '../../widgets/pet_card/pet_card.dart';
import '../../widgets/search_input/search_input.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: BlocProvider.of<HomeScreenCubit>(context)
            .fetchAnimalsAndCategories(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return BlocConsumer<HomeScreenCubit, HomeScreenState>(
            listenWhen: (previous, current) {
              return previous.selectedCategoryId != current.selectedCategoryId;
            },
            listener: (context, state) {
              print(state);
              // if (state.selectedCategoryId != null) {
              context
                  .read<HomeScreenCubit>()
                  .fetchAnimals(state.selectedCategoryId);
              // }
            },
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () =>
                    context.read<HomeScreenCubit>().fetchAnimalsAndCategories(),
                child: Container(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Builder(builder: (context) {
                      return CustomScrollView(
                        shrinkWrap: true,
                        slivers: [
                          SliverAppBar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            floating: true,
                            stretch: true,
                            actions: [
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.notifications,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    size: 28,
                                  ))
                            ],
                            flexibleSpace: FlexibleSpaceBar(
                              background: Container(
                                constraints: const BoxConstraints.expand(),
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Column(
                                          children: const [
                                            GreetingText(),
                                            SearchInput()
                                          ],
                                        ),
                                      ),
                                      CategoriesSlider(
                                          categories: state.categories)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            expandedHeight: 260,
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              color: Theme.of(context).colorScheme.primary,
                              child: ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                child: Container(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  height: 50,
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Popular Pets",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return Container(
                                    padding: index % 2 == 0
                                        ? const EdgeInsets.only(
                                            left: 15, bottom: 25)
                                        : const EdgeInsets.only(
                                            right: 15, top: 25),
                                    child: PetCard(
                                        key: ValueKey(state.list[index].id),
                                        pet: state.list[index]));
                              },
                              childCount:
                                  state.fetchPetsState != FetchState.success
                                      ? 0
                                      : state.list.length,
                            ),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 10,
                              childAspectRatio: 3 / 4,
                            ),
                          ),
                          if (state.fetchPetsState == FetchState.fetching)
                            const SliverFillRemaining(
                                fillOverscroll: true,
                                child:
                                    Center(child: CircularProgressIndicator())),
                          SliverFillRemaining(
                              hasScrollBody: false, child: Container()),
                        ],
                      );
                    })),
              );
            },
          );
        });
  }
}

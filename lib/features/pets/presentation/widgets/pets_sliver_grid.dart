import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/core/enums/fetch_state.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pets_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/pet_card.dart';

class PetsSliverGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetsCubit, PetsState>(
      builder: (_, state) {
        return SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (ctx, index) {
              return Container(
                  padding: index % 2 == 0
                      ? const EdgeInsets.only(left: 15, bottom: 25)
                      : const EdgeInsets.only(right: 15, top: 25),
                  child: PetCard(
                      key: ValueKey(state.pets[index].id),
                      pet: state.pets[index]));
            },
            childCount:
                state.fetchState != FetchState.success ? 0 : state.pets.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
        );
      },
    );
  }
}

class PetsSliverGridLoading extends StatelessWidget {
  const PetsSliverGridLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetsCubit, PetsState>(builder: (_, state) {
      return state.fetchState == FetchState.fetching
          ? const SliverFillRemaining(
              fillOverscroll: true,
              child: Center(child: CircularProgressIndicator()))
          : SliverFillRemaining(hasScrollBody: false, child: Container());
    });
  }
}

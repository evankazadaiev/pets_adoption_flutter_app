import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/screens/pet_screen/pet_screen_cubit.dart';

import '../../repositories/pets_repository.dart';

class PetScreen extends StatelessWidget {
  static const routeName = "/pet-screen";
  const PetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final petId = ModalRoute.of(context)!.settings.arguments as int;
    // final pet = BlocProvider.of<HomeScreenCubit>(context).;

    return BlocProvider(
        create: (context) => PetScreenCubit(PetsRepository()),
        child: Scaffold(
          body: PetScreenBody(
            petId: petId,
          ),
        ));
  }
}

class PetScreenBody extends StatelessWidget {
  final int petId;
  const PetScreenBody({Key? key, required this.petId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            BlocProvider.of<PetScreenCubit>(context).fetchAnimalDetails(petId),
        builder: (context, snapshot) {
          return BlocBuilder<PetScreenCubit, PetScreenState>(
            builder: (context, state) {
              return state.when(
                  initial: () => Container(),
                  loading: () => Container(),
                  loaded: (_state) {
                    return Container(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            expandedHeight: 300,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(30),
                              ),
                            ),
                            flexibleSpace: FlexibleSpaceBar(
                              title: Text('Goa', textScaleFactor: 1),
                              background: ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(30),
                                ),
                                child: Image.network(
                                  _state.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  error: () => Container());
            },
          );
        });
  }
}

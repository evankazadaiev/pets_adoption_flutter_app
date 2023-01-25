import 'package:auto_route/auto_route.dart';
import 'package:pets_adoption/core/presentation/wrappers/tabs_wrapper/tabs_wrapper.dart';
import 'package:pets_adoption/features/pets/pets.dart';

export 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: 'tabs/:id',
      page: TabsWrapper,
      initial: true,
      children: [
        AutoRoute(
            path: PetsHomeScreen.path,
            name: PetsHomeScreen.name,
            page: PetsHomeScreen,
            initial: true),
        AutoRoute(
            path: AddPetScreen.path,
            name: AddPetScreen.name,
            page: AddPetScreen)
      ],
    ),
    AutoRoute(path: PetDetailsScreen.path, page: PetDetailsScreen)
  ],
)
class $AppRouter {}

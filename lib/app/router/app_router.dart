import 'package:auto_route/auto_route.dart';
import 'package:pets_adoption/core/presentation/wrappers/tabs_wrapper/tabs_wrapper.dart';
import 'package:pets_adoption/features/pets/pets.dart';
import 'package:pets_adoption/features/pets/presentation/screens/add_anthropometry_details_form.dart';
import 'package:pets_adoption/features/pets/presentation/screens/add_name_breed_details_form.dart';

import '../../features/pets/presentation/screens/add_category_details_form.dart';

export 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: TabsWrapper.path,
      page: TabsWrapper,
      initial: true,
      children: [
        AutoRoute(
            path: PetsHomeScreen.path, page: PetsHomeScreen, initial: false),
        AutoRoute(path: AddPetScreen.path, page: AddPetScreen, children: [
          AutoRoute(
              path: AddCategoryDetailsForm.path,
              page: AddCategoryDetailsForm,
              initial: true),
          AutoRoute(
              path: AddNameBreedDetailsForm.path,
              page: AddNameBreedDetailsForm,
              initial: false),
          AutoRoute(
              path: AddAnthropometryDetailsForm.path,
              page: AddAnthropometryDetailsForm,
              initial: false)
        ])
      ],
    ),
    AutoRoute(path: PetDetailsScreen.path, page: PetDetailsScreen)
  ],
)
class $AppRouter {}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../core/presentation/wrappers/tabs_wrapper/tabs_wrapper.dart' as _i1;
import '../../features/pets/pets.dart' as _i2;
import '../../features/pets/presentation/screens/add_anthropometry_details_form.dart'
    as _i5;
import '../../features/pets/presentation/screens/add_category_details_form.dart'
    as _i3;
import '../../features/pets/presentation/screens/add_name_breed_details_form.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    TabsWrapperRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.TabsWrapper(),
      );
    },
    PetDetailsScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PetDetailsScreenRouteArgs>(
          orElse: () =>
              PetDetailsScreenRouteArgs(petId: pathParams.getString('petId')));
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PetDetailsScreen(petId: args.petId),
      );
    },
    PetsHomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PetsHomeScreen(),
      );
    },
    AddPetScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AddPetScreen(),
      );
    },
    AddCategoryDetailsFormRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.AddCategoryDetailsForm(),
      );
    },
    AddNameBreedDetailsFormRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.AddNameBreedDetailsForm(),
      );
    },
    AddAnthropometryDetailsFormRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.AddAnthropometryDetailsForm(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/TabsWrapper/:id',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          TabsWrapperRoute.name,
          path: '/TabsWrapper/:id',
          children: [
            _i6.RouteConfig(
              PetsHomeScreenRoute.name,
              path: 'PetsHomeScreenTab',
              parent: TabsWrapperRoute.name,
            ),
            _i6.RouteConfig(
              AddPetScreenRoute.name,
              path: 'AddPetScreenTab/:form',
              parent: TabsWrapperRoute.name,
              children: [
                _i6.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: AddPetScreenRoute.name,
                  redirectTo: 'AddCategoryDetailsForm',
                  fullMatch: true,
                ),
                _i6.RouteConfig(
                  AddCategoryDetailsFormRoute.name,
                  path: 'AddCategoryDetailsForm',
                  parent: AddPetScreenRoute.name,
                ),
                _i6.RouteConfig(
                  AddNameBreedDetailsFormRoute.name,
                  path: 'AddNameBreedDetailsForm',
                  parent: AddPetScreenRoute.name,
                ),
                _i6.RouteConfig(
                  AddAnthropometryDetailsFormRoute.name,
                  path: 'AddAnthropometryDetailsForm',
                  parent: AddPetScreenRoute.name,
                ),
              ],
            ),
          ],
        ),
        _i6.RouteConfig(
          PetDetailsScreenRoute.name,
          path: '/PetDetailsScreen/:petId',
        ),
      ];
}

/// generated route for
/// [_i1.TabsWrapper]
class TabsWrapperRoute extends _i6.PageRouteInfo<void> {
  const TabsWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TabsWrapperRoute.name,
          path: '/TabsWrapper/:id',
          initialChildren: children,
        );

  static const String name = 'TabsWrapperRoute';
}

/// generated route for
/// [_i2.PetDetailsScreen]
class PetDetailsScreenRoute
    extends _i6.PageRouteInfo<PetDetailsScreenRouteArgs> {
  PetDetailsScreenRoute({required String petId})
      : super(
          PetDetailsScreenRoute.name,
          path: '/PetDetailsScreen/:petId',
          args: PetDetailsScreenRouteArgs(petId: petId),
          rawPathParams: {'petId': petId},
        );

  static const String name = 'PetDetailsScreenRoute';
}

class PetDetailsScreenRouteArgs {
  const PetDetailsScreenRouteArgs({required this.petId});

  final String petId;

  @override
  String toString() {
    return 'PetDetailsScreenRouteArgs{petId: $petId}';
  }
}

/// generated route for
/// [_i2.PetsHomeScreen]
class PetsHomeScreenRoute extends _i6.PageRouteInfo<void> {
  const PetsHomeScreenRoute()
      : super(
          PetsHomeScreenRoute.name,
          path: 'PetsHomeScreenTab',
        );

  static const String name = 'PetsHomeScreenRoute';
}

/// generated route for
/// [_i2.AddPetScreen]
class AddPetScreenRoute extends _i6.PageRouteInfo<void> {
  const AddPetScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AddPetScreenRoute.name,
          path: 'AddPetScreenTab/:form',
          initialChildren: children,
        );

  static const String name = 'AddPetScreenRoute';
}

/// generated route for
/// [_i3.AddCategoryDetailsForm]
class AddCategoryDetailsFormRoute extends _i6.PageRouteInfo<void> {
  const AddCategoryDetailsFormRoute()
      : super(
          AddCategoryDetailsFormRoute.name,
          path: 'AddCategoryDetailsForm',
        );

  static const String name = 'AddCategoryDetailsFormRoute';
}

/// generated route for
/// [_i4.AddNameBreedDetailsForm]
class AddNameBreedDetailsFormRoute extends _i6.PageRouteInfo<void> {
  const AddNameBreedDetailsFormRoute()
      : super(
          AddNameBreedDetailsFormRoute.name,
          path: 'AddNameBreedDetailsForm',
        );

  static const String name = 'AddNameBreedDetailsFormRoute';
}

/// generated route for
/// [_i5.AddAnthropometryDetailsForm]
class AddAnthropometryDetailsFormRoute extends _i6.PageRouteInfo<void> {
  const AddAnthropometryDetailsFormRoute()
      : super(
          AddAnthropometryDetailsFormRoute.name,
          path: 'AddAnthropometryDetailsForm',
        );

  static const String name = 'AddAnthropometryDetailsFormRoute';
}

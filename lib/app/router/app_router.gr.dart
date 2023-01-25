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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;

import '../../core/presentation/wrappers/tabs_wrapper/tabs_wrapper.dart' as _i1;
import '../../features/pets/pets.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    TabsWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<TabsWrapperRouteArgs>(
          orElse: () => const TabsWrapperRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.TabsWrapper(key: args.key),
      );
    },
    PetDetailsScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PetDetailsScreenRouteArgs>(
          orElse: () =>
              PetDetailsScreenRouteArgs(petId: pathParams.getInt('petId')));
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PetDetailsScreen(petId: args.petId),
      );
    },
    PetsHomeScreenTab.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PetsHomeScreen(),
      );
    },
    AddPetScreenTab.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AddPetScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'tabs/:id',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          TabsWrapperRoute.name,
          path: 'tabs/:id',
          children: [
            _i3.RouteConfig(
              '#redirect',
              path: '',
              parent: TabsWrapperRoute.name,
              redirectTo: 'PetsHomeScreenTab',
              fullMatch: true,
            ),
            _i3.RouteConfig(
              PetsHomeScreenTab.name,
              path: 'PetsHomeScreenTab',
              parent: TabsWrapperRoute.name,
            ),
            _i3.RouteConfig(
              AddPetScreenTab.name,
              path: 'AddPetScreenTab',
              parent: TabsWrapperRoute.name,
            ),
          ],
        ),
        _i3.RouteConfig(
          PetDetailsScreenRoute.name,
          path: '/PetDetailsScreen/:petId',
        ),
      ];
}

/// generated route for
/// [_i1.TabsWrapper]
class TabsWrapperRoute extends _i3.PageRouteInfo<TabsWrapperRouteArgs> {
  TabsWrapperRoute({
    _i5.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          TabsWrapperRoute.name,
          path: 'tabs/:id',
          args: TabsWrapperRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TabsWrapperRoute';
}

class TabsWrapperRouteArgs {
  const TabsWrapperRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'TabsWrapperRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.PetDetailsScreen]
class PetDetailsScreenRoute
    extends _i3.PageRouteInfo<PetDetailsScreenRouteArgs> {
  PetDetailsScreenRoute({required int petId})
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

  final int petId;

  @override
  String toString() {
    return 'PetDetailsScreenRouteArgs{petId: $petId}';
  }
}

/// generated route for
/// [_i2.PetsHomeScreen]
class PetsHomeScreenTab extends _i3.PageRouteInfo<void> {
  const PetsHomeScreenTab()
      : super(
          PetsHomeScreenTab.name,
          path: 'PetsHomeScreenTab',
        );

  static const String name = 'PetsHomeScreenTab';
}

/// generated route for
/// [_i2.AddPetScreen]
class AddPetScreenTab extends _i3.PageRouteInfo<void> {
  const AddPetScreenTab()
      : super(
          AddPetScreenTab.name,
          path: 'AddPetScreenTab',
        );

  static const String name = 'AddPetScreenTab';
}

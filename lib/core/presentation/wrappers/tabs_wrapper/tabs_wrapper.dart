import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets_adoption/app/router/app_router.dart';

class TabsWrapper extends StatelessWidget {
  static const String path = '/TabsWrapper/:id';
  GlobalKey globalKey = GlobalKey();

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
    return AutoTabsScaffold(
      homeIndex: 0,
      routes: const [
        PetsHomeScreenRoute(),
        AddPetScreenRoute(),
        PetsHomeScreenRoute(),
        PetsHomeScreenRoute()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          key: globalKey,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus),
              label: ("Add"),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: ("Settings"),
            )
          ],
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pets_adoption/features/pets/pets.dart';
import 'package:pets_adoption/features/search/presentation/screens/map_screen.dart';

class TabsWrapper extends StatelessWidget {
  static const routeName = "/home-screen";
  TabsWrapper({Key? key}) : super(key: key);

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  // static List<Widget> _buildScreens() {
  //   return [
  //     const HomeScreen(),
  //     const HomeScreen(),
  //     const HomeScreen(),
  //     const ProfileScreen(),
  //   ];
  // }

  // List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: const Icon(CupertinoIcons.home),
  //       title: ("Home"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: const Icon(CupertinoIcons.search),
  //       title: ("Settings"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: const Icon(CupertinoIcons.bell_circle),
  //       title: ("Notifications"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: const Icon(CupertinoIcons.bell_slash_fill),
  //       title: ("Profile"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        const PetsHomeScreen(),
        MapScreen(),
        const PetsHomeScreen(),
        const PetsHomeScreen(),
        const PetsHomeScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
            icon: const Icon(CupertinoIcons.home),
            title: ("Home"),
            // activeColorPrimary: Theme.of(context).colorScheme.primary,
            inactiveColorPrimary: Colors.grey[500]),
        PersistentBottomNavBarItem(
            icon: const Icon(CupertinoIcons.search),
            title: ("Settings"),
            // activeColorPrimary: Theme.of(context).colorScheme.primary,
            inactiveColorPrimary: Colors.grey[500]),
        PersistentBottomNavBarItem(
            icon: const Icon(CupertinoIcons.add),
            // activeColorPrimary: Theme.of(context).colorScheme.primary,
            inactiveColorPrimary: Colors.grey[500]),
        PersistentBottomNavBarItem(
            icon: const Icon(CupertinoIcons.bell_solid),
            title: ("Notifications"),
            // activeColorPrimary: Theme.of(context).colorScheme.primary,
            inactiveColorPrimary: Colors.grey[500]),
        PersistentBottomNavBarItem(
            icon: const Icon(CupertinoIcons.profile_circled),
            title: ("Profile"),
            // activeColorPrimary: Theme.of(context).colorScheme.primary,
            inactiveColorPrimary: Colors.grey[500]),
      ],
      confineInSafeArea: true,
      // backgroundColor:
      //     Theme.of(context).colorScheme.secondary, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          colorBehindNavBar: Colors.grey,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)
          ]),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}

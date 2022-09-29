import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/screens/home_screen/home_screen.dart';
import 'package:pets_adoption/screens/profile_screen.dart';
import 'package:pets_adoption/wrappers/tabs_wrapper/tabs_wrapper_cubit.dart';

class BottomBarItem {
  final String label;
  final IconData iconType;
  final String routeName;

  const BottomBarItem(
      {required this.label, required this.iconType, required this.routeName});
}

class AppBottomBar extends StatelessWidget {
  AppBottomBar({Key? key}) : super(key: key);
  final List<BottomBarItem> _bottomBar = [
    const BottomBarItem(
        label: "Home", iconType: Icons.home, routeName: HomeScreen.routeName),
    const BottomBarItem(
        label: "Search",
        iconType: Icons.search,
        routeName: HomeScreen.routeName),
    const BottomBarItem(
        label: "Notifications",
        iconType: Icons.notifications_outlined,
        routeName: HomeScreen.routeName),
    const BottomBarItem(
        label: "Account",
        iconType: Icons.account_box_outlined,
        routeName: ProfileScreen.routeName)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Container(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            // border: Border(top: BorderSide()),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, 0))
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BlocBuilder<TabsWrapperCubit, TabsWrapperState>(
            builder: (context, state) {
              return Theme(
                data: Theme.of(context).copyWith(),
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  iconSize: 30,
                  type: BottomNavigationBarType.fixed,
                  selectedIconTheme: const IconThemeData(
                    color: Colors.white,
                  ),
                  unselectedItemColor: Colors.grey,
                  items: List.generate(
                      _bottomBar.length,
                      (index) => BottomNavigationBarItem(
                          label: _bottomBar[index].label,
                          icon: NavigationBarItemIcon(
                            iconType: _bottomBar[index].iconType,
                            isActive: index == state.index,
                          ))),
                  currentIndex: state.index,
                  onTap: (int index) {
                    context.read<TabsWrapperCubit>().selectTab(index: index);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class NavigationBarItemIcon extends StatelessWidget {
  final bool isActive;
  final IconData iconType;
  const NavigationBarItemIcon(
      {required this.isActive, required this.iconType, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              isActive ? Theme.of(context).colorScheme.primary : Colors.white),
      child: Icon(
        iconType,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/wrappers/tabs_wrapper/tabs_wrapper_cubit.dart';

import '../../screens/home_screen/home_screen.dart';
import '../../screens/profile_screen.dart';
import '../../widgets/app_bottom_bar/app_bottom_bar.dart';

class TabsWraper extends StatelessWidget {
  static const routeName = "/home-screen";
  const TabsWraper({Key? key}) : super(key: key);
  static const List<Widget> _tabs = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabsWrapperCubit(),
      child: BlocBuilder<TabsWrapperCubit, TabsWrapperState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: _tabs[state.index],
            bottomNavigationBar: AppBottomBar(),
          );
        },
      ),
    );
    ;
  }
}

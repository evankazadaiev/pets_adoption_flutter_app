import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/cubit/theme_cubit.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return SwitchListTile(
          value: state == ThemeMode.dark ? true : false,
          onChanged: (value) {
            BlocProvider.of<ThemeCubit>(context).toggleTheme(
                value: state == ThemeMode.dark
                    ? ThemeMode.light
                    : ThemeMode.dark);
          },
          title: const Text("Toggle theme"),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'cubit/app_theme_cubit.dart';

class AppThemeProvider extends InheritedWidget {
  final AppTheme theme;

  const AppThemeProvider({
    required this.theme,
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AppThemeProvider of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
    if (provider == null) {
      throw StateError('no provider in the widget tree');
    }

    return provider;
  }
}

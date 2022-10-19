// import 'package:flutter/material.dart';
// import 'package:pets_adoption/theme/theme.dart';
//
// /// Widget included in the tree to supply the current application theme via [BuildContext]
// ///
// /// Since it is a descendant of [InheritedWidget], this allows you to reach the provider from each widget,
// /// if you include the provider in the base root of the entire widget structure
// /// More about [InheritedWidget] (https://www.youtube.com/watch?v=1t-8rBCGBYw)
// class AppThemeProvider extends InheritedWidget {
//   final AppTheme theme;
//
//   const AppThemeProvider({
//     required this.theme,
//     required Widget child,
//     Key? key,
//   }) : super(
//           key: key,
//           child: child,
//         );
//
//   @override
//   bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
//
//   static AppThemeProvider of(BuildContext context) {
//     final themeProvider =
//         context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
//     if (themeProvider == null) {
//       throw StateError('AppThemeProvider are not provider in widget three');
//     }
//
//     return themeProvider;
//   }
// }

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void toggleTheme({required ThemeMode value}) {
    emit(value);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    return json['themeMode'];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'themeMode': state == ThemeMode.dark ? true : false};
  }
}

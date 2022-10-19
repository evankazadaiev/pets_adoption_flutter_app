import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pets_adoption/app/theme/models/input_text_theme.dart';

import '../app_theme_provider_widget.dart';
import '../models/app_button_theme.dart';
import '../models/app_color_theme.dart';
import '../models/app_text_theme.dart';

part 'app_theme_cubit.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme({
    required AppColorTheme colorTheme,
    required AppTextTheme textTheme,
    required AppInputTheme inputTheme,
    required AppButtonTheme buttonTheme,
  }) = _AppTheme;

  static AppTheme of(BuildContext context) =>
      AppThemeProvider.of(context).theme;
}

@singleton
class AppThemeCubit extends Cubit<AppTheme> {
  static const String tag = 'AppThemeCubit';

  AppThemeCubit()
      : super(
          AppTheme(
            colorTheme: const LightColorTheme(),
            textTheme: BaseTextTheme(),
            buttonTheme: AppButtonTheme(),
            inputTheme: AppInputTheme(),
          ),
        );

  void setDarkTheme() {
    emit(state.copyWith(colorTheme: const DarkColorTheme()));
  }

  void setLightTheme() {
    emit(state.copyWith(colorTheme: const LightColorTheme()));
  }
}

import 'package:flutter/material.dart';

import '../../../core/constants/sizes.dart';
import 'app_palette.dart';

abstract class AppInputsTheme {
  InputDecorationTheme get defaultInput;
  InputDecorationTheme get radioInput;
}

class AppInputTheme implements AppInputsTheme {
  @override
  InputDecorationTheme get defaultInput => InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Palette.blueGrey),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: const TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Palette.whiteGrey)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.yellow),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.statusRed,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.all(Sizes.spacing),
        fillColor: Palette.violetLighter,
        focusColor: Palette.mediumBlue,
        filled: true,
      );

  @override
  InputDecorationTheme get radioInput => InputDecorationTheme(
        hintStyle: const TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.yellow),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.yellow),
          borderRadius: BorderRadius.circular(12),
        ),
        hoverColor: MaterialStateColor.resolveWith((states) => Palette.green),
        contentPadding: EdgeInsets.zero,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.yellow),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.statusRed,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusColor: Palette.mediumBlue,
      );
}

import 'package:flutter/material.dart';

import '../../../core/constants/sizes.dart';
import 'app_palette.dart';

abstract class AppInputsTheme {
  InputDecorationTheme get defaultInput;
}

class AppInputTheme implements AppInputsTheme {
  @override
  InputDecorationTheme get defaultInput => InputDecorationTheme(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.blueGrey),
        ),
        hintStyle: const TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
            gapPadding: 0,
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
        ),
        contentPadding: const EdgeInsets.all(Sizes.spacing),
        fillColor: Palette.violetLighter,
        focusColor: Palette.mediumBlue,
        filled: true,
      );
}

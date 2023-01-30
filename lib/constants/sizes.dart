import 'dart:ui';

import 'package:flutter/material.dart';

class Sizes {
  static const double thinBorder = 1;
  static const double baseBorder = 2;
  static const double doubleBorder = 4;
  static const double spacing = 6;
  static const double basePadding = 16;

  static double get verticalPadding => basePadding / 2;
  static double get doubleSpacing => spacing * 2;
  static double get horizontalPadding => basePadding * 1.25;
  static double get enlargedPadding => basePadding * 1.5;
  static double get doublePadding => basePadding * 2;

  static const double iconRegular = 18;
  static const double iconMedium = 24;
  static const double iconLarge = 28;
}

class FontSize {
  static const double baseTextSize = 16;

  static const double h1Size = 32;
  static const double h2Size = 24;
  static const double h3Size = 19;

  static const double runningTextSize = 18;

  static const double buttonTextSize = 16;

  static const double captionTextSize = 14;

  static const double notificationTextSize = 12;
}

final defaultPadding = EdgeInsets.symmetric(
  horizontal: Sizes.horizontalPadding,
  vertical: Sizes.verticalPadding,
);

final modalBackdropShadow = ImageFilter.blur(sigmaX: 8, sigmaY: 8);

import 'package:flutter/material.dart';

import 'app_palette.dart';

abstract class AppColorTheme {
  //============================== Main Colors ==============================
  Brightness get brightness;

  Color get accent;

  Color get accentVariant;

  Color get onAccent;

  Color get secondaryAccent;

  Color get secondaryAccentVariant;

  Color get onSecondary;

  //============================== Typography Colors ==============================
  Color get textPrimary;

  Color get textSecondary;

  Color get textTertiary;

  Color get textOnAccent;

  //============================== Divider Colors ==============================
  Color get dividerPrimary;

  //============================== Background Colors ==============================
  Color get backgroundSurface;

  Color get backgroundWindowBackground;

  Color get onSurface;

  Color get onBackground;

  //============================== Icon Colors ==============================
  Color get iconPrimary;

  Color get iconSecondary;

  Color get iconTertiary;

  Color get iconSystem;

  Color get iconOnAccent;

  //============================== Overlay Colors ==============================
  Color get overlayDefault;

  //============================== Stroke Colors ==============================
  Color get strokePrimary;

  Color get strokeSuccess;

  Color get strokeAttention;

  Color get strokeError;
}

class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  //============================== Customization color tokens ==============================
  @override
  Color get accent => Palette.yellow;
  @override
  Color get accentVariant => Palette.greenDark;
  @override
  Color get onAccent => Palette.white;

  @override
  Color get secondaryAccent => accent;
  @override
  Color get secondaryAccentVariant => accentVariant;
  @override
  Color get onSecondary => onAccent;

  //============================== Typography color tokens ==============================
  @override
  Color get textPrimary => onBackground;
  @override
  Color get textSecondary => Palette.whiteGrey;
  @override
  Color get textTertiary => Colors.black12;
  @override
  Color get textOnAccent => onAccent;

  //============================== Divider color tokens ==============================
  @override
  Color get dividerPrimary => Palette.whiteGrey;

  //============================== Background color tokens ==============================
  @override
  Color get backgroundSurface => Palette.green;
  @override
  Color get backgroundWindowBackground => Palette.appBg;
  @override
  Color get onSurface => Palette.greenDark;
  @override
  Color get onBackground => Colors.blueGrey;

  //============================== Icon color tokens ==============================
  @override
  Color get iconPrimary => onSurface;
  @override
  Color get iconSecondary => Palette.navyBlue;
  @override
  Color get iconTertiary => Palette.mediumBlue;
  @override
  Color get iconSystem => onBackground;
  @override
  Color get iconOnAccent => onAccent;

  //============================== Overlay color tokens ==============================
  @override
  Color get overlayDefault => Palette.whiteGrey;

  //============================== Stroke color tokens ==============================
  @override
  Color get strokePrimary => Palette.statusOrange;
  @override
  Color get strokeSuccess => Palette.statusGreen;
  @override
  Color get strokeAttention => Palette.statusYellow;
  @override
  Color get strokeError => Palette.statusRed;

  const LightColorTheme() : super();
}

class DarkColorTheme extends LightColorTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get accent => Palette.navyBlue;
  @override
  Color get accentVariant => Palette.mediumBlue;

  @override
  Color get backgroundSurface => Palette.white;
  @override
  Color get backgroundWindowBackground => Palette.white;
  @override
  Color get onSurface => Palette.white;
  @override
  Color get onBackground => Palette.white;

  const DarkColorTheme() : super();
}

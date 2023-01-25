import 'package:flutter/material.dart';

import '../../../core/constants/sizes.dart';
import 'app_palette.dart';

abstract class AppButtonsTheme {
  // ButtonStyle get filledButton;
  //
  ButtonStyle get outlineButton;

  ButtonStyle get blankButton;
}

class AppButtonTheme implements AppButtonsTheme {
  ButtonStyle get sharedStyle => ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(
            Sizes.basePadding,
            Sizes.spacing,
            Sizes.basePadding,
            Sizes.spacing,
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        fixedSize: MaterialStateProperty.all(
          const Size.fromHeight(50),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      );
  //
  // @override
  // ButtonStyle get filledButton => sharedStyle.copyWith(
  //       textStyle: _getTextStyle(FontSize.baseTextSize, 1),
  //       foregroundColor: _stateColors(
  //         Palette.white,
  //         Palette.fadeTextColor,
  //       ),
  //       minimumSize: MaterialStateProperty.all(const Size(150, 50)),
  //       backgroundColor: _stateColors(
  //         Palette.cobaltBlue,
  //         Palette.white40,
  //       ),
  //     );
  //
  @override
  ButtonStyle get outlineButton => sharedStyle.copyWith(
        textStyle: _getTextStyle(FontSize.baseTextSize, 1),
        foregroundColor: _stateColors(
          Palette.navyBlue,
          Palette.white,
        ),
        minimumSize: MaterialStateProperty.all(const Size(150, 50)),
        side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return BorderSide(
              width: Sizes.baseBorder,
              color: Palette.navyBlue,
            );
          }

          return BorderSide(
            width: Sizes.baseBorder,
            color: Palette.navyBlue,
          );
        }),
      );

  @override
  ButtonStyle get blankButton => sharedStyle.copyWith(
        textStyle: _getTextStyle(FontSize.runningTextSize, 0.2),
        foregroundColor: _stateColors(
          Palette.violetDarker,
          Palette.whiteGrey,
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(
            left: Sizes.baseBorder,
            right: Sizes.baseBorder,
          ),
        ),
      );
}

_getTextStyle(double textSize, double letterSpacing) {
  return MaterialStateProperty.all(
    TextStyle(
      fontSize: textSize,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.bold,
      color: Palette.white,
    ),
  );
}

MaterialStateProperty<Color> _stateColors(activeColor, disabledColor) {
  return MaterialStateProperty.resolveWith((states) {
    return states.contains(MaterialState.disabled)
        ? disabledColor
        : activeColor;
  });
}

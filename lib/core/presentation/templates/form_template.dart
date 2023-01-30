import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_adoption/app/theme/models/app_palette.dart';
import 'package:pets_adoption/constants/sizes.dart';

import '../../../gen/assets.gen.dart';

class FormTemplate extends StatelessWidget {
  final Widget? content;
  final SvgPicture? petPicture;
  final bool showPicture;

  const FormTemplate({this.content, this.petPicture, this.showPicture = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.violetGlaucous,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          Sizes.doublePadding,
          Sizes.doublePadding,
          Sizes.doublePadding,
          Sizes.doublePadding,
        ),
        child: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
          if (showPicture)
            Positioned(
              right: -30,
              top: -10,
              child: petPicture ?? Assets.images.dogFace.svg(width: 270),
            ),
          content ?? const SizedBox(),
        ]),
      ),
    );
  }
}

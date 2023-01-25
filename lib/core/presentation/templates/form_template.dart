import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/theme/models/app_palette.dart';
import '../../constants/sizes.dart';

class FormTemplate extends StatelessWidget {
  final List<Widget>? content;
  final SvgPicture? petPicture;

  const FormTemplate({this.content, this.petPicture});

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
        child: Center(
            child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          right: -50,
                          bottom: 270,
                          child: petPicture ??
                              SvgPicture.asset(
                                'assets/images/dog-face.svg',
                                width: 300,
                              )),
                      ...?content
                    ],
                  ),
                ))),
      ),
    );
  }
}

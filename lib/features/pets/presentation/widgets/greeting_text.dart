import 'package:flutter/material.dart';
import 'package:pets_adoption/app/theme/cubit/app_theme_cubit.dart';
import 'package:pets_adoption/core/constants/sizes.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Sizes.doubleSpacing, top: Sizes.spacing),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey Jane, ",
                    style: AppTheme.of(context).textTheme.h5Regular,
                  ),
                  Text(
                    "Welcome Back!",
                    style: AppTheme.of(context).textTheme.h5Medium,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

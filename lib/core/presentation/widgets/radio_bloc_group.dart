import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../app/theme/cubit/app_theme_cubit.dart';
import '../../../app/theme/models/app_palette.dart';

class RadioBlocGroup<T> extends StatelessWidget {
  final SelectFieldBloc<T, dynamic> selectFieldBloc;
  final String? labelText;
  const RadioBlocGroup({required this.selectFieldBloc, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          inputDecorationTheme: AppTheme.of(context).inputTheme.radioInput),
      child: BlocBuilder<SelectFieldBloc<T, dynamic>,
          SelectFieldBlocState<T, dynamic>>(
        bloc: selectFieldBloc,
        builder: (_, fieldState) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            // borderRadius: AppTheme.of(context)
            //     .inputTheme
            //     .radioInput
            child: RadioButtonGroupFieldBlocBuilder(
              canDeselect: false,
              selectFieldBloc: selectFieldBloc,
              overlayColor: MaterialStateColor.resolveWith(
                  (states) => Palette.yellow.withOpacity(0.7)),
              fillColor: MaterialStateColor.resolveWith(
                  (states) => Palette.violetDarker),
              decoration: InputDecoration(
                  labelText: labelText,
                  labelStyle: const TextStyle(color: Colors.black54),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: fieldState.value != null
                          ? Palette.yellow
                          : Colors.white70,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  )),
              itemBuilder: (_, item) => FieldItem(
                child: Text(
                  item as String,
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

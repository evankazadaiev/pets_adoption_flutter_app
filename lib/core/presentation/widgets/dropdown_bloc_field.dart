import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../app/theme/models/app_palette.dart';

class DropdownBlocField<T> extends StatelessWidget {
  final SelectFieldBloc<T, dynamic> selectFieldBloc;
  // final Iterable<String>? autofillHints;
  final String? labelText;
  final IconData? prefixIcon;
  final bool? showEmptyItem;
  // final TextInputType? keyboardType;
  // final String? suffixText;
  // final int? maxLength;

  const DropdownBlocField(
      {required this.selectFieldBloc,
      this.labelText,
      this.prefixIcon,
      this.showEmptyItem = false});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectFieldBloc<T, dynamic>,
            SelectFieldBlocState<T, dynamic>>(
        bloc: selectFieldBloc,
        builder: (_, fieldState) {
          return DropdownFieldBlocBuilder(
              showEmptyItem: false,
              selectFieldBloc: selectFieldBloc,
              decoration: InputDecoration(
                  labelText: labelText,
                  prefixIcon: Icon(prefixIcon),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: fieldState.value != null
                          ? Palette.yellow
                          : Colors.white70,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  )),
              itemBuilder: (_, value) => FieldItem(
                    child: Text(
                      value as String,
                      style: TextStyle(color: Colors.black54.withOpacity(0.5)),
                    ),
                  ));
        });
  }
}

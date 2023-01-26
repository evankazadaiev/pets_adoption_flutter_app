import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:pets_adoption/core/constants/sizes.dart';

class InputBlocField<T extends dynamic> extends StatelessWidget {
  final TextFieldBloc<T> textFieldBloc;
  final Iterable<String>? autofillHints;
  final String? labelText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final String? suffixText;
  final int? maxLength;

  const InputBlocField(
      {required this.textFieldBloc,
      this.autofillHints,
      this.labelText,
      this.prefixIcon,
      this.keyboardType = TextInputType.text,
      this.suffixText, this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldBlocBuilder(
          enableOnlyWhenFormBlocCanSubmit: true,
          textFieldBloc: textFieldBloc,
          keyboardType: keyboardType,
          autofillHints: autofillHints,
          maxLength: maxLength,
          decoration: InputDecoration(
            labelText: labelText,
            suffixText: suffixText,
            prefixIcon: Icon(
              prefixIcon,
            ),
          ),
        ),
        const SizedBox(
          height: Sizes.spacing,
        ),
      ],
    );
  }
}

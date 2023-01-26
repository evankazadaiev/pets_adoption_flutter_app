import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:pets_adoption/app/theme/cubit/app_theme_cubit.dart';
import 'package:pets_adoption/core/constants/sizes.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/new_pet_cubit.dart';

import '../../../../core/presentation/widgets/input_bloc_field.dart';

class AddAnthropometryDetailsFormBloc extends FormBloc<String, String> {
  final weight = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final age = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final description = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  AddAnthropometryDetailsFormBloc() {
    addFieldBlocs(
      fieldBlocs: [weight, age, description],
    );
  }

  @override
  void onSubmitting() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    emitSuccess();
  }
}

class AddAnthropometryDetailsForm extends StatelessWidget {
  static const String path = 'AddAnthropometryDetailsForm';

  static void open(
    BuildContext context, {
    bool replace = false,
  }) {
    if (replace) {
      context.router.replaceNamed(path);
    } else {
      if (context.router.current.path != path) {
        context.router.pushNamed(path);
      }
    }
  }

  _onSuccessHandler(BuildContext ctx, _) {
    final addAnthropometryDetailsBloc =
        ctx.read<AddAnthropometryDetailsFormBloc>();

    ctx.read<NewPetCubit>().submitAnthropometry(
        age: addAnthropometryDetailsBloc.age.valueToInt!,
        weight: addAnthropometryDetailsBloc.weight.valueToInt!,
        description: addAnthropometryDetailsBloc.description.value);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddAnthropometryDetailsFormBloc(),
      child: Builder(
        builder: (context) {
          final addAnthropometryDetailsBloc =
              context.read<AddAnthropometryDetailsFormBloc>();

          return FormBlocListener<AddAnthropometryDetailsFormBloc, String,
              String>(
            onSubmitting: (context, state) {
              // LoadingDialog.show(context);
            },
            onSubmissionFailed: (context, state) {
              // LoadingDialog.hide(context);
            },
            onSuccess: _onSuccessHandler,
            onFailure: (context, state) {
              // LoadingDialog.hide(context);

              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.failureResponse!)));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Specify details of a new pet",
                  style: AppTheme.of(context).textTheme.h6Bold,
                ),
                SizedBox(
                  height: Sizes.doubleSpacing,
                ),
                InputBlocField(
                    textFieldBloc: addAnthropometryDetailsBloc.weight,
                    labelText: 'Weight',
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    prefixIcon: Icons.pets,
                    suffixText: 'Kg'),
                InputBlocField(
                    textFieldBloc: addAnthropometryDetailsBloc.age,
                    labelText: 'Age',
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    prefixIcon: Icons.pets,
                    suffixText: 'Months'),
                InputBlocField(
                    textFieldBloc: addAnthropometryDetailsBloc.description,
                    labelText: 'Description',
                    keyboardType: TextInputType.text,
                    prefixIcon: Icons.description,
                    suffixText: 'Details'),
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: addAnthropometryDetailsBloc.submit,
                        child: const Text('Continue'),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

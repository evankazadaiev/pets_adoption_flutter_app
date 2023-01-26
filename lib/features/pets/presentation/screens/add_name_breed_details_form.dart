import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:pets_adoption/core/constants/sizes.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/new_pet_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/screens/add_anthropometry_details_form.dart';
import 'package:pets_adoption/injection.dart';

import '../../../../app/theme/cubit/app_theme_cubit.dart';
import '../../../../core/presentation/widgets/input_bloc_field.dart';

class AddNameBreedDetailsFormBloc extends FormBloc<String, String> {
  final petName = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final petBreed = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  AddNameBreedDetailsFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        petName,
        petBreed,
      ],
    );
  }

  @override
  void onSubmitting() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    emitSuccess();
  }
}

class AddNameBreedDetailsForm extends StatelessWidget {
  static const String path = 'AddNameBreedDetailsForm';

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

  _onSuccessHandler(BuildContext ctx, FormBlocSuccess<String, String> state) {
    final addPetFormBloc = ctx.read<AddNameBreedDetailsFormBloc>();

    ctx.read<NewPetCubit>().submitBriefDetails(
        petName: addPetFormBloc.petName.value,
        petBreed: addPetFormBloc.petBreed.value);

    AddAnthropometryDetailsForm.open(ctx);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => AddNameBreedDetailsFormBloc(),
      child: Builder(
        builder: (context) {
          final addPetFormBloc = context.read<AddNameBreedDetailsFormBloc>();

          return FormBlocListener<AddNameBreedDetailsFormBloc, String, String>(
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
              key: UniqueKey(),
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Specify name and breed of a new pet",
                  style: AppTheme.of(context).textTheme.h6Bold,
                ),
                SizedBox(
                  height: Sizes.doubleSpacing,
                ),
                InputBlocField(
                  textFieldBloc: addPetFormBloc.petName,
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  labelText: 'Pet name',
                  prefixIcon: Icons.pets,
                ),
                InputBlocField(
                  textFieldBloc: addPetFormBloc.petBreed,
                  labelText: 'Pet breed',
                  prefixIcon: Icons.pets,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: addPetFormBloc.submit,
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

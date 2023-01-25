import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:pets_adoption/core/presentation/templates/form_template.dart';

import '../../../../app/theme/cubit/app_theme_cubit.dart';
import '../../../../core/constants/sizes.dart';

class AddPetScreen extends StatelessWidget {
  const AddPetScreen({Key? key}) : super(key: key);

  static const String name = 'AddPetScreenTab';
  static const String path = 'AddPetScreenTab';

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

  @override
  Widget build(BuildContext context) {
    return FormTemplate(
      content: [AddPetForm()],
    );
  }
}

class AddPetFormBloc extends FormBloc<String, String> {
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

  final showSuccessResponse = BooleanFieldBloc();

  AddPetFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        petName,
        petBreed,
        showSuccessResponse,
      ],
    );
  }

  @override
  void onSubmitting() async {
    debugPrint(petName.value);
    debugPrint(petBreed.value);
    debugPrint(showSuccessResponse.value.toString());

    await Future<void>.delayed(const Duration(seconds: 1));

    if (showSuccessResponse.value) {
      emitSuccess();
    } else {
      emitFailure(failureResponse: 'This is an awesome error!');
    }
  }
}

class AddPetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddPetFormBloc(),
      child: Builder(
        builder: (context) {
          final addPetFormBloc = context.read<AddPetFormBloc>();

          return FormBlocListener<AddPetFormBloc, String, String>(
            onSubmitting: (context, state) {
              // LoadingDialog.show(context);
            },
            onSubmissionFailed: (context, state) {
              // LoadingDialog.hide(context);
            },
            onSuccess: (context, state) {
              // LoadingDialog.hide(context);

              // Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(builder: (_) => const SuccessScreen()));
            },
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
                TextFieldBlocBuilder(
                  textFieldBloc: addPetFormBloc.petName,
                  keyboardType: TextInputType.text,
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Pet name',
                    prefixIcon: Icon(Icons.pets),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: addPetFormBloc.petBreed,
                  autofillHints: const [AutofillHints.nameSuffix],
                  decoration: const InputDecoration(
                    labelText: 'Pet breed',
                    prefixIcon: Icon(Icons.pets_sharp),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: CheckboxFieldBlocBuilder(
                    booleanFieldBloc: addPetFormBloc.showSuccessResponse,
                    body: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text('Show success response'),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: addPetFormBloc.submit,
                  child: const Text('Continue'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

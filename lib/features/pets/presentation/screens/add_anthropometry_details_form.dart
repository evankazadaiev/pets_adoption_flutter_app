import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:pets_adoption/app/router/app_router.gr.dart';
import 'package:pets_adoption/core/constants/sizes.dart';
import 'package:pets_adoption/core/presentation/templates/form_template.dart';
import 'package:pets_adoption/core/presentation/widgets/input_bloc_field.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/new_pet_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/screens/pets_home_screen.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/pet_photo_upload.dart';

class AddAnthropometryDetailsFormBloc extends FormBloc<String, String> {
  final photo = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

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
      fieldBlocs: [photo, weight, age, description],
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

  _onSuccessHandler(BuildContext ctx, _) async {
    final addAnthropometryDetailsBloc =
        ctx.read<AddAnthropometryDetailsFormBloc>();

    ctx.read<NewPetCubit>().submitAnthropometry(
        // imageUrl: addAnthropometryDetailsBloc.photo.value,
        imageUrl:
            "https://t4.ftcdn.net/jpg/00/95/00/55/360_F_95005565_u8gLZrJFXV1t9Qw0Y0N1nSVI8Vl2wCMg.jpg",
        age: addAnthropometryDetailsBloc.age.valueToInt!,
        weight: addAnthropometryDetailsBloc.weight.valueToInt!,
        description: addAnthropometryDetailsBloc.description.value);

    await ctx.read<NewPetCubit>().createNewPetAdvertisement();

    if (ctx.mounted) {
      ctx.router.pushAndPopUntil(const AddCategoryDetailsFormRoute(),
          predicate: (_) => false);

      ctx.router.root.navigateNamed(PetsHomeScreen.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormTemplate(
      showPicture: false,
      content: BlocProvider(
        create: (_) => AddAnthropometryDetailsFormBloc(),
        child: Builder(
          builder: (context) {
            final addAnthropometryDetailsBloc =
                context.read<AddAnthropometryDetailsFormBloc>();

            return FormBlocListener<AddAnthropometryDetailsFormBloc, String,
                String>(
              onSuccess: _onSuccessHandler,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: Sizes.doubleSpacing,
                  ),
                  PetPhotoUpload(
                      textFieldBloc: addAnthropometryDetailsBloc.photo),
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
      ),
    );
  }
}

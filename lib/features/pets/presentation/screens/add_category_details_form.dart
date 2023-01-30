import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:pets_adoption/app/theme/cubit/app_theme_cubit.dart';
import 'package:pets_adoption/constants/sizes.dart';
import 'package:pets_adoption/core/presentation/cubits/pets/categories_cubit.dart';
import 'package:pets_adoption/core/presentation/templates/form_template.dart';
import 'package:pets_adoption/core/presentation/widgets/dropdown_bloc_field.dart';
import 'package:pets_adoption/core/presentation/widgets/radio_bloc_group.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/new_pet_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/screens/add_name_breed_details_form.dart';

class AddCategoryDetailsFormBloc extends FormBloc<String, String> {
  final petCategory = SelectFieldBloc(validators: [
    FieldBlocValidators.required,
  ], items: []);

  final sex = SelectFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
    items: ['Male', 'Female'],
  );

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

  AddCategoryDetailsFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        petCategory,
        sex,
      ],
    );
  }

  @override
  void onSubmitting() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    emitSuccess();
  }
}

class AddCategoryDetailsForm extends StatelessWidget {
  static const String path = 'AddCategoryDetailsForm';

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

  static void goBack(BuildContext context) {
    context.navigateNamedTo(path);
  }

  _onSuccessHandler(BuildContext ctx, FormBlocSuccess<String, String> state) {
    final addPetFormBloc = ctx.read<AddCategoryDetailsFormBloc>();

    ctx.read<NewPetCubit>().submitCategoryDetails(
        category: addPetFormBloc.petCategory.value!,
        sex: addPetFormBloc.sex.value!);

    AddNameBreedDetailsForm.open(ctx);
  }

  AddCategoryDetailsFormBloc _createFormBlocHandler(BuildContext ctx) {
    final categories = ctx.read<CategoriesCubit>().state.categories;

    final bloc = AddCategoryDetailsFormBloc();

    for (var e in categories) {
      bloc.petCategory.addItem(e.title);
    }

    return bloc;
  }

  @override
  Widget build(BuildContext context) {
    return FormTemplate(
      content: BlocProvider(
        create: _createFormBlocHandler,
        child: Builder(
          builder: (context) {
            final addPetFormBloc = context.read<AddCategoryDetailsFormBloc>();
            return FormBlocListener<AddCategoryDetailsFormBloc, String, String>(
              onSuccess: _onSuccessHandler,
              child: Column(
                key: const ValueKey(path),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Specify details of a new pet",
                    style: AppTheme.of(context).textTheme.h6Bold,
                  ),
                  SizedBox(
                    height: Sizes.doubleSpacing,
                  ),
                  DropdownBlocField(
                    selectFieldBloc: addPetFormBloc.petCategory,
                    labelText: 'Pet category',
                    prefixIcon: Icons.category,
                  ),
                  RadioBlocGroup(
                    selectFieldBloc: addPetFormBloc.sex,
                    labelText: 'Sex',
                  ),
                  // InputBlocField(
                  //   textFieldBloc: addPetFormBloc.petName,
                  //   autofillHints: const [
                  //     AutofillHints.name,
                  //   ],
                  //   labelText: 'Pet name',
                  //   prefixIcon: Icons.pets,
                  // ),
                  // InputBlocField(
                  //   textFieldBloc: addPetFormBloc.petBreed,
                  //   labelText: 'Pet breed',
                  //   prefixIcon: Icons.pets,
                  // ),
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
      ),
    );
  }
}

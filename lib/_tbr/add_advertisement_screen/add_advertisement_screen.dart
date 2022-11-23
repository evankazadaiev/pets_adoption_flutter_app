import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/pet_categories.dart';
import '../../features/pets/presentation/widgets/categories_slider.dart';

// TODO:: [kazadaiev] -- add pet desciption textField, location selection, + pet photo upload

class AddAdvertisementScreen extends StatelessWidget {
  const AddAdvertisementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPetFormBloc(),
      child: const SafeArea(child: AddPetForm()),
    );
  }
}

class NewPetFormBloc extends FormBloc<String, String> {
  final name = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  // final photo = TextFieldBloc(validators: [FieldBlocValidators.required]);

  final breed = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final category = SelectFieldBloc(
    validators: [FieldBlocValidators.required],
    name: "category",
    items: PET_CATEGORIES.map((e) => e['id']).toList(),
  );

  NewPetFormBloc() {
    addFieldBlocs(
      fieldBlocs: [name, breed, category],
    );
  }

  @override
  FutureOr<void> onSubmitting() async {
    debugPrint(json.encode(category.value));
    debugPrint(breed.value);
    debugPrint(name.value.toString());

    await Future<void>.delayed(const Duration(seconds: 1));

    // if (showSuccessResponse.value) {
    //   emitSuccess();
    // } else {
    //   emitFailure(failureResponse: 'This is an awesome error!');
    // }
  }
}

class AddPetForm extends StatelessWidget {
  const AddPetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final petFormBloc = context.read<NewPetFormBloc>();
    return FormBlocListener<NewPetFormBloc, String, String>(
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

        // ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text(state.failureResponse!)));
      },
      child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              children: <Widget>[
                // PetPhotoUpload(
                //   onSelectImage: () {},
                // ),
                TextFieldBlocBuilder(
                  textFieldBloc: petFormBloc.name,
                  keyboardType: TextInputType.name,
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: petFormBloc.breed,
                  // autofillHints: const [AutofillHints.],
                  decoration: const InputDecoration(
                    labelText: 'Breed',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                BlocBuilder(
                    bloc: petFormBloc.category,
                    builder: (context, state) {
                      print(state);
                      print(petFormBloc.category);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Category of a pet",
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 70,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: PET_CATEGORIES.map((e) {
                                print(e);
                                print(petFormBloc.category.state.hasError);
                                print(petFormBloc.category.state.error);
                                return CategoryListItem(
                                    key: ValueKey(e),
                                    iconType: IconDataSolid(
                                        int.parse(e['iconCodePoint']!)),
                                    active:
                                        e['id'] == petFormBloc.category.value,
                                    onSelectCategory: () => petFormBloc.category
                                        .updateValue(e['id']));
                              }).toList(),
                            ),
                          ),
                          if (petFormBloc.category.state.hasError &&
                              petFormBloc.category.state.isDirty)
                            Text(
                              petFormBloc.category.state.error as String,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.copyWith(
                                      color: Theme.of(context).errorColor),
                            )
                        ],
                      );
                    }),
                // FormThemeProvider(
                //   theme: FormTheme(
                //       radioTheme: RadioFieldTheme(
                //           radioTheme: RadioThemeData(
                //               visualDensity: VisualDensity.compact))),
                //   child: RadioButtonGroupFieldBlocBuilder(
                //     groupStyle: FlexGroupStyle(),
                //     selectFieldBloc: petFormBloc.category,
                //     itemBuilder: (context, value) => FieldItem(
                //         alignment: Alignment.bottomCenter,
                //         isEnabled: false,
                //         child: Builder(builder: (context) {
                //           return CategoryListItem(
                //               active: false, onSelectCategory: () {});
                //         })),
                //     decoration: const InputDecoration(
                //       border: InputBorder.none, hintText: 'hint',
                //       // labelText: 'Category',
                //       // prefixIcon: SizedBox(),
                //       // icon: Icon(Icons.add_a_photo),
                //       // isCollapsed: true,
                //       // isDense: true,
                //     ),
                //   ),
                // ),
                ElevatedButton(
                  onPressed: petFormBloc.submit,
                  child: const Text('Submit'),
                ),
              ],
            ),
          )),
    );
  }
}

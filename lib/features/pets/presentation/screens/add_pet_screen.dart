import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/core/presentation/templates/form_template.dart';

import '../../../../injection.dart';
import '../cubits/new_pet_cubit.dart';

class AddPetScreen extends StatelessWidget {
  const AddPetScreen({Key? key}) : super(key: key);

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
      content: BlocProvider<NewPetCubit>(
        create: (_) => di.get(),
        child: const AutoRouter(),
      ),
    );
  }
}
//
// class AddPetFormBloc extends FormBloc<String, String> {
//   final petName = TextFieldBloc(
//     validators: [
//       FieldBlocValidators.required,
//     ],
//   );
//
//   final petBreed = TextFieldBloc(
//     validators: [
//       FieldBlocValidators.required,
//     ],
//   );
//
//   final showSuccessResponse = BooleanFieldBloc();
//
//   AddPetFormBloc() {
//     addFieldBlocs(
//       fieldBlocs: [
//         petName,
//         petBreed,
//         showSuccessResponse,
//       ],
//     );
//   }
//
//   @override
//   void onSubmitting() async {
//     debugPrint(petName.value);
//     debugPrint(petBreed.value);
//     debugPrint(showSuccessResponse.value.toString());
//
//     await Future<void>.delayed(const Duration(seconds: 1));
//
//     emitSuccess();
//   }
//
//   void _onSuccessHandler(BuildContext ctx, AddPetFormBloc state) {}
// }
//
// class AddPetForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => AddPetFormBloc(),
//       child: Builder(
//         builder: (context) {
//           final addPetFormBloc = context.read<AddPetFormBloc>();
//
//           return FormBlocListener<AddPetFormBloc, String, String>(
//             onSubmitting: (context, state) {
//               // LoadingDialog.show(context);
//             },
//             onSubmissionFailed: (context, state) {
//               // LoadingDialog.hide(context);
//             },
//             onSuccess: (context, state) {
//               // LoadingDialog.hide(context);
//
//               // Navigator.of(context).pushReplacement(
//               //     MaterialPageRoute(builder: (_) => const SuccessScreen()));
//             },
//             onFailure: (context, state) {
//               // LoadingDialog.hide(context);
//
//               ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(state.failureResponse!)));
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   "Specify details of a new pet",
//                   style: AppTheme.of(context).textTheme.h6Bold,
//                 ),
//                 SizedBox(
//                   height: Sizes.doubleSpacing,
//                 ),
//                 InputBlocField(
//                   textFieldBloc: addPetFormBloc.petName,
//                   autofillHints: const [
//                     AutofillHints.name,
//                   ],
//                   labelText: 'Pet name',
//                   prefixIcon: Icons.pets,
//                 ),
//                 InputBlocField(
//                   textFieldBloc: addPetFormBloc.petBreed,
//                   labelText: 'Pet breed',
//                   prefixIcon: Icons.pets,
//                 ),
//                 Row(
//                   children: [
//                     const SizedBox(
//                       width: 50,
//                     ),
//                     Expanded(
//                       flex: 3,
//                       child: ElevatedButton(
//                         onPressed: addPetFormBloc.submit,
//                         child: const Text('Continue'),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 50,
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

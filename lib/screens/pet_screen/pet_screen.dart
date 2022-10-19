import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/screens/pet_screen/pet_screen_cubit.dart';
import 'package:pets_adoption/widgets/pet_scroll_view/pet_scroll_view.dart';

import '../../repositories/pets_repository.dart';

class PetScreen extends StatelessWidget {
  static const routeName = "/pet-screen";
  const PetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final petId = ModalRoute.of(context)!.settings.arguments as int;
    // final pet = BlocProvider.of<HomeScreenCubit>(context).;

    return BlocProvider(
      create: (context) => PetScreenCubit(PetsRepository()),
      child: Scaffold(
        body: PetScreenBody(
          petId: petId,
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   isExtended: true,
        //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //   icon: Icon(Icons.supervised_user_circle),
        //   label: Text('Fixed Button'),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // bottomNavigationBar: Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.blue, foregroundColor: Colors.white),
        //     // color: Colors.blue,
        //     // textColor: Colors.white,
        //     child: Text('Fixed Button'),
        //   ),
        // ),
      ),
    );
  }
}

class PetScreenBody extends StatefulWidget {
  final int petId;
  const PetScreenBody({Key? key, required this.petId}) : super(key: key);

  @override
  State<PetScreenBody> createState() => _PetScreenBodyState();
}

class _PetScreenBodyState extends State<PetScreenBody> {
  // final ScrollController _controller = ScrollController();
  // static const maxOffset = 320;
  //
  // Future<void> _onStretchTrigger() async {
  //   print("on stretch");
  // }
  //
  // bool _isButtonShown = false;
  //
  // _onScrollListener() {
  //   setState(() {
  //     _isButtonShown = _controller.offset >= maxOffset;
  //   });
  //   print("scroll");
  //   print(_controller.position);
  // }

  // @override
  // void initState() {
  //   _controller.addListener(_onScrollListener);
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   _controller.removeListener(_onScrollListener);
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: BlocProvider.of<PetScreenCubit>(context)
            .fetchAnimalDetails(widget.petId),
        builder: (context, snapshot) {
          return BlocBuilder<PetScreenCubit, PetScreenState>(
            builder: (context, state) {
              return state.when(
                  initial: () => Container(),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  loaded: (loadedState) {
                    return Container(
                      color: Theme.of(context).colorScheme.secondary,
                      child: PetScrollView(
                        loadedState: loadedState,
                      ),
                    );
                  },
                  error: () => Container());
            },
          );
        });
  }
}

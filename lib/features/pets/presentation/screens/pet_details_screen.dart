import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pet_details_cubit.dart';
import 'package:pets_adoption/features/pets/presentation/widgets/pet_scroll_view.dart';
import 'package:pets_adoption/injection.dart';

class PetDetailsScreen extends StatelessWidget {
  static const routeName = "/pet-details-screen";
  const PetDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final petId = ModalRoute.of(context)!.settings.arguments as int;
    // final pet = BlocProvider.of<HomeScreenCubit>(context).;

    return BlocProvider<PetDetailsCubit>(
      create: (_) => di(),
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
        future: BlocProvider.of<PetDetailsCubit>(context)
            .fetchAnimalDetails(widget.petId),
        builder: (context, snapshot) {
          return BlocBuilder<PetDetailsCubit, PetDetailsState>(
            builder: (context, state) {
              return state.when(
                  initial: () => Container(),
                  processing: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  done: (loadedState) {
                    return Container(
                      color: Theme.of(context).colorScheme.secondary,
                      child: PetScrollView(
                        loadedState: loadedState,
                      ),
                    );
                  },
                  failed: () => Container());
            },
          );
        });
  }
}

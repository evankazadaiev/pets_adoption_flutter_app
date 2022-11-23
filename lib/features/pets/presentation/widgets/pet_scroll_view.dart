import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_adoption/core/domain/entities/pet.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/pet_scroll_view_cubit.dart';

import './pet_details_item.dart';

class PetScrollView extends StatelessWidget {
  final PetModel loadedState;

  const PetScrollView({Key? key, required this.loadedState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PetScrollViewCubit(),
      child: PetScrollViewContent(loadedState: loadedState),
    );
  }
}

class PetScrollViewContent extends StatefulWidget {
  const PetScrollViewContent({Key? key, required this.loadedState})
      : super(key: key);
  final PetModel loadedState;

  @override
  State<PetScrollViewContent> createState() => _PetScrollViewContentState();
}

class _PetScrollViewContentState extends State<PetScrollViewContent> {
  final ScrollController _controller = ScrollController();
  static const maxOffset = 50;
  Future<void> _onStretchTrigger() async {
    print("on stretch");
  }

  // bool _isButtonShown = false;
  //
  // _onScrollListener() {
  //   // setState(() {
  //   _isButtonShown = _controller.offset >= maxOffset;
  //   // });
  //   BlocProvider.of<PetScrollViewCubit>(context)
  //       .toggleButtonAppearance(_isButtonShown);
  //   print("scroll");
  //   print(_controller.position);
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _controller.addListener(_onScrollListener);
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.removeListener(_onScrollListener);
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PetScrollViewCubit, PetScrollViewState>(
      listener: (context, state) {
        // TODO: implement listener
        print(_controller.offset);
      },
      builder: (context, state) {
        return CustomScrollView(
          controller: _controller,
          slivers: [
            SliverAppBar(
              pinned: false,
              onStretchTrigger: _onStretchTrigger,
              stretch: true,
              bottom: PreferredSize(
                preferredSize: const Size(0, 20),
                child: Container(),
              ),
              expandedHeight: 320,
              flexibleSpace: Container(
                color: Theme.of(context).colorScheme.secondary,
                child: Stack(children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        foregroundDecoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Colors.black87.withOpacity(0.75),
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black87.withOpacity(0.2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0, 0.25, 0.9, 1],
                        )),
                        child: Image.network(
                          widget.loadedState.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    bottom: -1,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 0)
                        ],
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.loadedState.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700)),
                        Text(widget.loadedState.breedName,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Kyiv pets adoption house (1,4 km)",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Description",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 5),
                        Text(widget.loadedState.description,
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: widget.loadedState.anthropometry
                              .map((e) => PetDetailsItem(
                                  label: e.label, value: e.value))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  // BlocBuilder<PetScrollViewCubit, PetScrollViewState>(
                  //   builder: (context, state) {
                  //     return AnimatedOpacity(
                  //         opacity: state.isButtonShown ? 1 : 0,
                  //         curve: Curves.bounceInOut,
                  //         duration: Duration(milliseconds: 500),
                  //         child: state.isButtonShown
                  //             ? ElevatedButton(
                  //                 style: ElevatedButton.styleFrom(
                  //                   minimumSize: const Size.fromHeight(50),
                  //                 ),
                  //                 onPressed: () {},
                  //                 child: Text("Bottom"),
                  //               )
                  //             : Container());
                  //   },
                  // ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 30),
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {},
                    child: Text("Adopt pet!"),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

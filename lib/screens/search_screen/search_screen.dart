import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pets_adoption/screens/search_screen/search_screen_cubit.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Container();
    // return BlocProvider(
    //   create: (context) => SearchScreenCubit(),
    //   child: Builder(builder: (ctx) {
    //     return FutureBuilder(
    //       future: BlocProvider.of<SearchScreenCubit>(ctx).fetchUserLocation(),
    //       builder: (ctx, snapshot) {
    //         print(snapshot);
    //         return GoogleMap(
    //           mapType: MapType.normal,
    //           initialCameraPosition:
    //               CameraPosition(target: LatLng(37.422, -122.88), zoom: 10),
    //           onMapCreated: (GoogleMapController controller) {
    //             _controller.complete(controller);
    //           },
    //           onTap: (_) {},
    //         );
    //       },
    //     );
    //   }),
    // );
  }
}

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Text("Result 1"),
        )
      ],
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  static const routeName = "/map-screen";
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition:
          const CameraPosition(target: LatLng(37.422, -122.88), zoom: 10),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      onTap: (_) {},
    );

    // return Container();
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

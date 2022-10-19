import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

import '../../models/place_location/place_location.dart';

part 'search_screen_cubit.freezed.dart';
part 'search_screen_state.dart';

class SearchScreenCubit extends Cubit<SearchScreenState> {
  SearchScreenCubit() : super(SearchScreenState());

  Future<void> fetchUserLocation() async {
    try {
      // emit(const PetScreenState.loading());
      // await Future.delayed(const Duration(seconds: 3));
      Location location = Location();

      bool _serviceEnabled;
      PermissionStatus _permissionGranted;
      LocationData _locationData;

      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        print("Service isnt enabled");
        _serviceEnabled = await location.requestService();
        print("Service requesting...");
        if (!_serviceEnabled) {
          print("Service isnt enabled 2");
          return;
        }
      }

      _permissionGranted = await location.hasPermission();
      print(_permissionGranted);
      if (_permissionGranted == PermissionStatus.denied) {
        print("permission granted denied");
        _permissionGranted = await location.requestPermission();
      }

      _locationData = await location.getLocation();

      print("get location");
      print(_locationData.longitude);
      print(_locationData.latitude);
      print(_locationData);
      // emit(state.copyWith(
      //     userGeolocation: PlaceLocation(
      //         latitude: _locationData.latitude as double,
      //         longitude: _locationData.longitude as double,
      //         address: "Address test")));
    } catch (error) {
      print(error);
      // emit(const HomeScreenState.error());
    }
  }
}

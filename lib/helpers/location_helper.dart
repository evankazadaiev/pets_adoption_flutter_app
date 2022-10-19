import 'package:dio/dio.dart';

const GOOGLE_API_KEY = 'AIzaSyCReZRFH71Uy1lBuJXzCmC9wWUbC7oewPE';

class LocationHelper {
  static String generateLocationPreviewImage(
      {required double latitude, required double longitude, int zoom = 16}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=$zoom&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude &key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlaceAddress(
      {required double lat, required double lng}) async {
    try {
      final res = await Dio().get(
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY');
      print(res.data);
      return res.data['results'][0]['formatted_address'];
    } catch (error) {
      rethrow;
    }
  }
}

import 'package:geolocator/geolocator.dart';

class Location {
  double? currentlatitude;
  double? currentlongitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    currentlatitude = position.latitude;
    currentlongitude = position.longitude;
  }
}

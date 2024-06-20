import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  static const double defaultLatitude = 43.2387;
  static const double defaultLongitude = 76.9450;

  Future<void> requestPermission() async {
   await location.requestPermission();
  }

  Future<LocationData> getCurrentLocation() async {

    try {
      bool serviceEnabled = await location.serviceEnabled();

      if (!serviceEnabled) {
        return LocationData.fromMap({
          'latitude': defaultLatitude,
          'longitude': defaultLongitude,
        });
      }

      bool requestResult = await location.requestService();
      if (!requestResult) {
        return LocationData.fromMap({
          'latitude': defaultLatitude,
          'longitude': defaultLongitude,
        });
      }

      PermissionStatus permissionStatus = await location.requestPermission();

      if (permissionStatus == PermissionStatus.granted) {
        LocationData locationData = await location.getLocation();
        return locationData;
      } else {
        return LocationData.fromMap({
          'latitude': defaultLatitude,
          'longitude': defaultLongitude,
        });
      }
    } catch (e) {
      return LocationData.fromMap({
        'latitude': defaultLatitude,
        'longitude': defaultLongitude,
      });
    }
  }

  Future<PermissionStatus> requestPermission1() async {
    PermissionStatus permission = await location.requestPermission();

    return permission;
  }
}

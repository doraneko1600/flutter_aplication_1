import 'package:flutter_application_1/components/importer.dart';

String getLocation() {
  
  // String location = determinePosition() as String;
  String location = Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high) as String ;

  return location;
}

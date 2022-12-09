import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();

    // if (permission == LocationPermission.whileInUse ||
    //     permission == LocationPermission.always)
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

// var temp = jsonDecode(data)['main']['temp'];
// print(temp);
//
// var id = jsonDecode(data)['weather'][0]['id'];
// print(id);
//
// var name = jsonDecode(data)['name'];
// print(name);

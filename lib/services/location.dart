import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

    Future<void> getCurrentLocation() async {
      try {
        Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;

        Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low,
        );

        latitude = position.latitude;
        longitude = position.longitude;
        print('Lat: $latitude' + ' Long: $longitude');
      } catch (err) {
        print(err.message);
      }
    }
  }


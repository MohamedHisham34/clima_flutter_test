// ignore_for_file: unnecessary_string_interpolations, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';
import 'package:clima_flutter_test/location.dart';
import 'package:flutter/material.dart';
import 'package:clima_flutter_test/newpage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

Location location = Location();
var all_weatherDatarespond;

class getLocationData {
  final Uri url;
  getLocationData({required this.url});

  Future<void> getLocationDataFunction() async {
    await location.getCurrentLocation();
    http.Response response = await http.get(url);
    all_weatherDatarespond = response.body;
    var StateCode = response.statusCode;
    // var Longitude = jsonDecode(all_weatherDatarespond)["coord"]["lon"];
    // var latitude = jsonDecode(all_weatherDatarespond)["coord"]["lat"];
    // print(Longitude);
    // print(latitude);
    // print(StateCode);
  }

  String getWeatherData() {
    return all_weatherDatarespond;
  }
}

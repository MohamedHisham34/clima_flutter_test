// ignore_for_file: prefer_const_constructors, unused_import, duplicate_import

import 'dart:convert';
import 'package:clima_flutter_test/location.dart';
import 'package:clima_flutter_test/networking.dart';
import 'package:flutter/material.dart';
import 'package:clima_flutter_test/newpage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

const apiKey = "354e99b26deed8181f0ff7a089f26611";
Location location = Location();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    print("testing initState");
    GetLocationData();
    super.initState();
  }

  void GetLocationData() async {
    await location.getCurrentLocation();
    var lat = location.currentlatitude;
    var long = location.currentlongitude;
    getLocationData getlocationData = getLocationData(
      url: Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey'),
    );
    getlocationData.getLocationDataFunction();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {},
          child: Text("Mohamed"),
        ),
      ),
    );
  }
}

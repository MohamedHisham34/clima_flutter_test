// ignore_for_file: prefer_const_constructors, unused_import, duplicate_import

import 'dart:async';
import 'dart:convert';
import 'package:clima_flutter_test/%D9%8BUI.dart';
import 'package:clima_flutter_test/location.dart';
import 'package:clima_flutter_test/networking.dart';
import 'package:clima_flutter_test/test.dart';
import 'package:flutter/material.dart';
import 'package:clima_flutter_test/newpage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:circular_gradient_spinner/circular_gradient_spinner.dart';

const apiKey = "354e99b26deed8181f0ff7a089f26611";
Location location = Location();

void main() {
  runApp(MaterialApp(
    initialRoute: MyApp.MyHomePage,
    routes: {
      MyApp.MyHomePage: (context) => const MyApp(),
      "/second": (context) => const Test_Test()
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static String MyHomePage = "homePage";
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
    getLocationData getlocationData = getLocationData(
      url: Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=${location.currentlatitude}&lon=${location.currentlongitude}&appid=$apiKey'),
    );
    await getlocationData.getLocationDataFunction();
    var all_weatherData = getlocationData.getWeatherData();
    print("Done Testing");
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UiPage(weatherData: all_weatherData),
        ));
  }

  @override
  Widget build(BuildContext context) {
    print('test');
    return Spinner();
  }
}

class Spinner extends StatefulWidget {
  const Spinner({super.key});

  @override
  State<Spinner> createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  @override
  Widget build(BuildContext context) {
    print('Test build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: CircularGradientSpinner(color: Colors.red, size: 40),
      ),
    );
  }
}

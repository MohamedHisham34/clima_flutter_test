// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key, required this.weatherData});

  final String weatherData;

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.weatherData,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

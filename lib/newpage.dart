import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  String Name = "Mohamed";
  @override
  void initState() {
    Name = "Ahmed";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        Name,
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}

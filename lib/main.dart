import 'package:ejemplo1/screens/api_Ciu.dart';
import 'package:ejemplo1/screens/api_Est.dart';
import 'package:ejemplo1/screens/home_screen.dart';
import 'package:ejemplo1/src/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Login());
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:dpx/view/widgets/splashscreen.dart';
import 'package:flutter/material.dart';

import 'view/widgets/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N E W S P O I N T',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}


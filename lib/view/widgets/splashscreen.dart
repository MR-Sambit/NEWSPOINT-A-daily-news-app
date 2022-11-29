// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:dpx/view/widgets/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), (() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SizedBox(
          height: 300,
        ),
        FadeInImage(
          placeholder: AssetImage("assets/image/NEWSPOINT.png"),
          image: AssetImage("assets/image/NEWSPOINT.png"),
          height: 260,
          width: 260,
        ),
        Spacer(),
        Text("                        Developed By Sambit Haldar.       ",
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 20,
        )
      ],
    ));
  }
}

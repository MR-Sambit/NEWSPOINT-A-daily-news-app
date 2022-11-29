// // ignore_for_file: prefer_const_constructors

// import 'dart:async';

// import 'package:dpx/view/widgets/home.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 4), (() {
//       Navigator.pushReplacement(context, MaterialPageRoute(
//         builder: (context) => HomeScreen(),
//       ));
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
        
//           color: Colors.red,
//           child: Center(
//             child: Text(
//               'N E W S P O I N T',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 35,
//                   fontWeight: FontWeight.w700),
//             ),
//           )),
//     );
//   }
// }

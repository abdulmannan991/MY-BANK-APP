import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hblapp1/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool auth = true;

  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 134, 70),
      body: SafeArea(
          child: Container(
        child: Center(
            child: Image.asset(
          "images/Capture.PNG",
          height: 150,
        )),
      )),
    );
  }
}

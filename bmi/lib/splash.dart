import 'dart:async';

import 'package:bmi/bmiscreen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) => bmicalculator()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/img.png"))
        ),
      ),
    );
  }
}

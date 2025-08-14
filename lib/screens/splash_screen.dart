import 'dart:async';
import 'package:flutter/material.dart';
import 'package:insta_clone/screens/loginscreen.dart';
import 'package:insta_clone/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Loginscreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgurl: "image.png"),
            SizedBox(height: 10),
            Uihelper.CustomImage(imgurl: "Logo.png"),
          ],
        ),
      ),
    );
  }
}

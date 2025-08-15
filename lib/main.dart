import 'package:flutter/material.dart';
import 'package:insta_clone/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'instagram clone',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      
      home: SplashScreen(),
    );
  }
}


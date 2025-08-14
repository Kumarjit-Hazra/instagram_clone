import 'package:flutter/material.dart';

class Likescreen extends StatelessWidget {
  const Likescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Like Screen",style: TextStyle(color: Colors.blue),),
      ),
    );
  }
}
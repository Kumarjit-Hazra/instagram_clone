// lib/uihelper.dart

import 'package:flutter/material.dart';

class Uihelper {
  static Widget CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: const Color(0xFF3897F0)),
      ),
    );
  }

  static Widget CustomTextfield({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: TextField(
        controller: controller,
        keyboardType: textinputtype,
        obscureText: tohide,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.white70),
          filled: true,
          fillColor: const Color(0xFF121212),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
        ),
      ),
    );
  }

  static Widget CustomImage({
    required String imgurl,
    double? width,
    double? height,
  }) {
    return Image.asset(
      "assets/images/$imgurl",
      width: width,
      height: height,
      fit: BoxFit.scaleDown,
      filterQuality: FilterQuality.high,
      isAntiAlias: true,
    );
  }

  // --- CORRECTED METHOD ---
  static Widget CustomButton({
    required VoidCallback callback,
    required String buttonName, // Changed to lowerCamelCase for convention
  }) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
        onPressed: callback, // Simplified callback
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0095F6), // Using hex for consistency
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Fixed this line
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
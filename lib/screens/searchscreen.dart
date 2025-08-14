import 'package:flutter/material.dart';
import 'package:insta_clone/Widgets/uihelper.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Search TextField
            Container(
              height: 36,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF262626),
              ),
              child: TextField(
                controller: TextEditingController(),
                
                decoration: const InputDecoration(
                  hintText: "search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF8E8E93),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF8E8E93),
                   fontWeight: FontWeight.normal,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 10),
            // Live.png image
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Uihelper.CustomImage(imgurl: "Live.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

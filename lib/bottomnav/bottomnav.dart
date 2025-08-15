import 'package:flutter/material.dart';
import 'package:insta_clone/screens/homescreen.dart';
import 'package:insta_clone/screens/likescreen.dart';
import 'package:insta_clone/screens/loginscreen.dart';
import 'package:insta_clone/screens/postscreen.dart';
import 'package:insta_clone/screens/profilescreen.dart';
import 'package:insta_clone/screens/searchscreen.dart';
import 'package:insta_clone/widgets/uihelper.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentindex = 0;

  List<Widget> pages = [
    Homescreen(),
    Searchscreen(),
    Postscreen(),
    Likescreen(),
    Profilescreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(imgurl: "home.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(imgurl: "Search.png"),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(imgurl: "add.png"),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(imgurl: "likes.png"),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(imgurl: "profileicon.png"),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

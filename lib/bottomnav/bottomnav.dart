import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:insta_clone/screens/homescreen.dart';
import 'package:insta_clone/screens/likescreen.dart';
import 'package:insta_clone/screens/loginscreen.dart';
import 'package:insta_clone/screens/postscreen.dart';
import 'package:insta_clone/screens/profilescreen.dart';
import 'package:insta_clone/screens/searchscreen.dart';

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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_app),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

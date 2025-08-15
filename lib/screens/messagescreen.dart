import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/uihelper.dart';

class Messagescreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  
  var arrContent = [
    {
      "img": "Oval.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day, bro!"
    },
    {
      "img": "Oval-1.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…"
    },
    {
      "img": "Oval-2.png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!"
    },
    {
      "img": "Oval-3.png",
      "name": "andrewww_",
      "lastmsg": "Sounds good 😂😂😂"
    },
    {
      "img": "Oval.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day, bro!"
    },
    {
      "img": "Oval-1.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…"
    },
    {
      "img": "Oval-2.png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!"
    },
    {
      "img": "Oval-3.png",
      "name": "andrewww_",
      "lastmsg": "Sounds good 😂😂😂"
    },
    {
      "img": "Oval.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day, bro!"
    },
    {
      "img": "Oval-1.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…"
    },
    {
      "img": "Oval-2.png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!"
    },
    {
      "img": "Oval-3.png",
      "name": "andrewww_",
      "lastmsg": "Sounds good 😂😂😂"
    },
    {
      "img": "Oval.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day, bro!"
    },
    {
      "img": "Oval-1.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…"
    },
    {
      "img": "Oval-2.png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!"
    },
    {
      "img": "Oval-3.png",
      "name": "andrewww_",
      "lastmsg": "Sounds good 😂😂😂"
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: const Icon(CupertinoIcons.back, color: Colors.white)
        ),
        title: const Text(
          "Sujal_dave",
          style: TextStyle(
            fontSize: 16,
            color: Color(0XFFF9F9F9),
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white, size: 28)
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0XFF262626),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                controller: searchController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0XFF8E8E93)
                  ),
                  prefixIcon: Uihelper.CustomImage(imgurl: "Search Icon.png"),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10)
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/${arrContent[index]["img"]}"),
                  ),
                  title: Text(
                    arrContent[index]["name"].toString(),
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  subtitle: Text(
                    arrContent[index]["lastmsg"].toString(),
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey
                    ),
                  ),
                  trailing: Uihelper.CustomImage(imgurl: "Picture.png"),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0XFF121212),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.CustomImage(imgurl: "Icon-3.png"),
              const SizedBox(width: 5),
              const Text(
                "Camera",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0XFF3897F0)
                )
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

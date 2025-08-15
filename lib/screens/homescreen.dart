import 'package:flutter/material.dart';
import 'package:insta_clone/Widgets/uihelper.dart';
import 'package:insta_clone/screens/messagescreen.dart';

class Homescreen extends StatelessWidget {
  final List<Map<String, String>> stories = [
    {
      "img": "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1085&auto=format&fit=crop",
      "name": "Your Story",
    },
    {
      "img": "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=689&auto=format&fit=crop",
      "name": "karennne",
    },
    {
      "img": "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=600&auto=format&fit=crop&q=60",
      "name": "zackjohn",
    },
    {
      "img": "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?w=600&auto=format&fit=crop&q=60",
      "name": "kieron_d",
    },
    {
      "img": "https://plus.unsplash.com/premium_photo-1673866484792-c5a36a6c025e?w=600&auto=format&fit=crop&q=60",
      "name": "craig_love",
    },
    {
      "img": "https://images.unsplash.com/photo-1533636721434-0e2d61030955?w=600&auto=format&fit=crop&q=60",
      "name": "karennne",
    },
  ];

  var posts = [
    {
      "user": "joshua_l",
      "location": "Tokyo, Japan",
      "img": "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&auto=format&fit=crop&q=60",
      "likes": 1.2,
      "comments": 89,
      "caption": "Beautiful sunset in Tokyo! 🌅",
      "like_user": "kumarjit"
    },
    {
      "user": "craig_love",
      "location": "Paris, France",
      "img": "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&auto=format&fit=crop&q=60",
      "likes": 2.3,
      "comments": 156,
      "caption": "Paris never disappoints! ❤️",
      "like_user": "alex_w"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Uihelper.CustomImage(imgurl: "Camera Icon.png"),
          onPressed: () {},
        ),
        title: Uihelper.CustomImage(imgurl: "Instagram Logo.png"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Uihelper.CustomImage(imgurl: "IGTV.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Uihelper.CustomImage(imgurl: "Messanger.png"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Messagescreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stories Section
            Container(
              height: 110,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.pink, Colors.orange],
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                stories[index]["img"].toString(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          stories[index]["name"].toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            
            // Posts Section
            ...posts.map((post) => _buildPost(context, post)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildPost(BuildContext context, Map<String, dynamic> post) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  post["user"] == "joshua_l" 
                    ? "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1085&auto=format&fit=crop"
                    : "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=689&auto=format&fit=crop",
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post["user"],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    post["location"],
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: Uihelper.CustomImage(imgurl: "Shape-3.png"),
                onPressed: () {},
              ),
            ],
          ),
        ),
        
        // Post Image
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            post["img"],
            fit: BoxFit.cover,
          ),
        ),
        
        // Post Actions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              IconButton(
                icon: Uihelper.CustomImage(imgurl: "Like.png"),
                onPressed: () {},
              ),
              IconButton(
                icon: Uihelper.CustomImage(imgurl: "Comment.png"),
                onPressed: () {},
              ),
              IconButton(
                icon: Uihelper.CustomImage(imgurl: "Messanger.png"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Messagescreen()),
                  );
                },
              ),
              const Spacer(),
              IconButton(
                icon: Uihelper.CustomImage(imgurl: "Save.png"),
                onPressed: () {},
              ),
            ],
          ),
        ),
        
        // Post Details
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                      post["like_user"] == "kumarjit"
                        ? "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?w=600&auto=format&fit=crop&q=60"
                        : "https://images.unsplash.com/photo-1533636721434-0e2d61030955?w=600&auto=format&fit=crop&q=60",
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Liked by ${post["like_user"]} and ${post["likes"]}k others",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: post["user"],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " ${post["caption"]}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "View all ${post["comments"]} comments",
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

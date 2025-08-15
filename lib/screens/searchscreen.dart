import 'package:flutter/material.dart';
import 'package:insta_clone/Widgets/uihelper.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the grid
    final arrContent = [
      {
        "img":
            "https://images.unsplash.com/photo-1615246445659-ea5716177645?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1566423471547-2a37c9a39899?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aW1hZ2VzfGVufDB8fDB8fHww"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1706755347832-0a8c8caa7647?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {"img": "https://images.unsplash.com/photo-1502613374390-8da7aa532177?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"},
      {
        "img":
            "https://images.unsplash.com/photo-1586810724476-c294fb7ac01b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1591738802175-709fedef8288?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW1hZ2VzfGVufDB8fDB8fHww"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1622269854086-491e8620d031?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {"img": "https://images.unsplash.com/photo-1633770420143-a94c96c46376?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"},
      {
        "img":
            "https://images.unsplash.com/photo-1592777336981-18334a076cef?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1599810082441-20858a7f10aa?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1649754720766-73dd8182621a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {"img": "https://images.unsplash.com/photo-1604301124282-e41de6574ced?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTJ8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"},
    
    {
        "img":
            "https://images.unsplash.com/photo-1643083111970-732b4e1e451a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {
        "img":
            "https://images.unsplash.com/photo-1574012755818-d04012d79095?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
      {"img": "https://images.unsplash.com/photo-1631729908727-be96555ba678?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODh8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Row: Search bar + Live icon
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF262626),
                        ),
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                            hintText: "Search",
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
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Uihelper.CustomImage(imgurl: "Live.png"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Second Row: Category filters
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryButton("IGTV", "Shape.png"),
                    const SizedBox(width: 8),
                    _buildCategoryButton("Shop", null),
                    const SizedBox(width: 8),
                    _buildCategoryButton("Style", null),
                    const SizedBox(width: 8),
                    _buildCategoryButton("Sports", null),
                    const SizedBox(width: 8),
                    _buildCategoryButton("Auto", null),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Grid view for images
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Image.network(
                        arrContent[index]["img"]!,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  itemCount: arrContent.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String text, String? iconName) {
    return Container(
      height: 32,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (text == "Shop")
            const Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 15,
            )
          else if (iconName != null)
            Uihelper.CustomImage(
              imgurl: iconName,
              width: 16,
              height: 16,
            ),
          if (text == "Shop" || iconName != null) const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFFF9F9F9),
            ),
          ),
        ],
      ),
    );
  }
}

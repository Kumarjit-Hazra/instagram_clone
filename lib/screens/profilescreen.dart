import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/uihelper.dart';
import 'package:insta_clone/screens/tagscreen.dart';
import 'package:insta_clone/screens/editprofilescreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget _buildStatColumn(String count, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ✅ Move image URLs here
    final List<String> imageUrls = [
      'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&auto=format&fit=crop&q=60',
      'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&auto=format&fit=crop&q=60',
      'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=600&auto=format&fit=crop&q=60',
      'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?w=600&auto=format&fit=crop&q=60',
      'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=600&auto=format&fit=crop&q=60',
      'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?w=600&auto=format&fit=crop&q=60',
      'https://plus.unsplash.com/premium_photo-1673866484792-c5a36a6c025e?w=600&auto=format&fit=crop&q=60',
      'https://images.unsplash.com/photo-1533636721434-0e2d61030955?w=600&auto=format&fit=crop&q=60',
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Kumarjit",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Uihelper.CustomImage(imgurl: "Shape-3.png"),
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Uihelper.CustomImage(imgurl: "Oval-8.png"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildStatColumn("54", "Posts"),
                      const SizedBox(width: 20),
                      _buildStatColumn("834", "Followers"),
                      const SizedBox(width: 20),
                      _buildStatColumn("162", "Following"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Kumarjit Hazra",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Learning Flutter",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Everything is designed.",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfileScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: const Center(child: Icon(Icons.add, size: 40)),
                    ),
                    const SizedBox(height: 4),
                    const Text("New", style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Uihelper.CustomImage(imgurl: "Oval-1.png"),
                    ),
                    const SizedBox(height: 4),
                    const Text("Friends", style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Uihelper.CustomImage(imgurl: "Oval-2.png"),
                    ),
                    const SizedBox(height: 4),
                    const Text("Sport", style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: Uihelper.CustomImage(imgurl: "Oval-3.png"),
                    ),
                    const SizedBox(height: 4),
                    const Text("Design", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(icon: Uihelper.CustomImage(imgurl: "Grid Icon.png")),
                  Tab(icon: Uihelper.CustomImage(imgurl: "Tags Icon.png")),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Posts Grid
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        imageUrls[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  // Tags Grid
                  const Tagscreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

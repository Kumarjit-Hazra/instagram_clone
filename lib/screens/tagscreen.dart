import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/uihelper.dart';

class Tagscreen extends StatelessWidget {
  const Tagscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of random image URLs for the grid
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

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Uihelper.CustomImage(imgurl: "Instagram Logo.png"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(2),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemCount: 24,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
              imageUrls[index % imageUrls.length],
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: Colors.grey[900],
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[800],
                  child: const Icon(
                    Icons.error_outline,
                    color: Colors.white54,
                    size: 30,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

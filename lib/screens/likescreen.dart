import 'package:flutter/material.dart';
import '../widgets/uihelper.dart';

class Likescreen extends StatelessWidget {
  const Likescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Following"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          _buildActivityItem(
            context,
            userImage: "Oval-1.png",
            userName: "karennne",
            action: "liked 3 posts.",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-2.png",
            userName: "kiero_d, zackjohn and craig_love",
            action: "liked joshua_j photo.",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-3.png",
            userName: "kiero_d",
            action: "started following craig_love.",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-4.png",
            userName: "craig_love",
            action: "liked 8 posts.",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-5.png",
            userName: "maxjacobson",
            action: "liked mis_potter's post.",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-6.png",
            userName: "maxjacobson and craig_love",
            action: "liked martini_rond's post.",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-7.png",
            userName: "karennne",
            action: "liked martini_rond's comment: @martini_rond Nice!",
            time: "3h",
          ),
          _buildActivityItem(
            context,
            userImage: "Oval-8.png",
            userName: "maxjacobson",
            action: "liked 3 posts.",
            time: "3h",
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(BuildContext context, {
    required String userImage,
    required String userName,
    required String action,
    required String time,
  }) {
    return ListTile(
      leading: Uihelper.CustomImage(imgurl: userImage),
      title: Text(
        "$userName $action",
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        time,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

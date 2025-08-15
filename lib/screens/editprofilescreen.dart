import 'package:flutter/material.dart';
import '../widgets/uihelper.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _nameController;
  late TextEditingController _bioController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _bioController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Uihelper.CustomTextfield(
              controller: _nameController,
              text: "Name",
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            const SizedBox(height: 16),
            Uihelper.CustomTextfield(
              controller: _bioController,
              text: "Bio",
              tohide: false,
              textinputtype: TextInputType.multiline,
            ),
            const SizedBox(height: 16),
            Uihelper.CustomButton(
              callback: () {
                // Logic to save changes
                Navigator.pop(context);
              },
              buttonName: "Save",
            ),
          ],
        ),
      ),
    );
  }
}

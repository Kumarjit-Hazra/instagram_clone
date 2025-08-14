import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/uihelper.dart';
import 'package:insta_clone/screens/loginscreen.dart'; // Import your login screen

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.CustomImage(imgurl: "logo.png", height: 50),
              const SizedBox(height: 30),
              Uihelper.CustomTextfield(
                controller: emailController,
                text: "Email",
                tohide: false,
                textinputtype: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              Uihelper.CustomTextfield(
                controller: passwordController,
                text: "Password",
                tohide: true,
                textinputtype: TextInputType.text,
              ),
              const SizedBox(height: 10),
              Uihelper.CustomTextfield(
                controller: usernameController,
                text: "Username",
                tohide: false,
                textinputtype: TextInputType.name,
              ),
              const SizedBox(height: 20),
              Uihelper.CustomButton(
                callback: () {
                  // Sign up logic will go here
                },
                buttonName: "Sign up",
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Uihelper.CustomTextButton(
                    text: "Sign in",
                    callback: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Loginscreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

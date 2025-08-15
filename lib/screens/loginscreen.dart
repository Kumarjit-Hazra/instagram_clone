import 'package:flutter/material.dart';
import 'package:insta_clone/screens/signupscreen.dart';
import 'package:insta_clone/widgets/uihelper.dart';
import 'package:insta_clone/bottomnav/bottomnav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgurl: "logo.png"),
            const SizedBox(height: 20),
            Uihelper.CustomTextfield(
              controller: emailController,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),
            const SizedBox(height: 15),
            Uihelper.CustomTextfield(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Uihelper.CustomTextButton(
                    text: "Forgot password?",
                    callback: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Uihelper.CustomButton(
              callback: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Bottomnav(),
                  ),
                );
              },
              buttonName: "Log In",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomImage(imgurl: "fb.png"),
                Uihelper.CustomTextButton(
                  text: "Log in with Facebook",
                  callback: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Uihelper.CustomTextButton(
                  text: "Sign Up",
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Signupscreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

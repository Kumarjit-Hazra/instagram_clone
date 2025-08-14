import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/signupscreen.dart';
import 'package:insta_clone/widgets/uihelper.dart';
import 'package:insta_clone/Screens/signupscreen.dart';
import 'package:insta_clone/bottomnav/bottomnav.dart';
import 'package:insta_clone/Widgets/uihelper.dart' hide Uihelper;
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgurl: "logo.png"),
            SizedBox(height: 20),
            Uihelper.CustomTextfield(
              controller: emailController,
              text: "Email",
              tohide: false, textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            Uihelper.CustomTextfield(
              controller: passwordController,
              text: "Password",
              tohide: true, textinputtype: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Uihelper.CustomTextButton(
                    text: "Forgot password?",
                    callback: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Uihelper.CustomButton(
  callback: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Bottomnav(),
      ),
    );
  },
  buttonName: "Log In",
),

            SizedBox(height: 20),
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
            SizedBox(height: 10),
            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Uihelper.CustomTextButton(
                  text: "Sign Up",
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signupscreen(),
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
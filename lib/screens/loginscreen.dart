import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/uihelper.dart';

class Loginscreen extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgurl: "logo.png"),
            SizedBox(height: 30),
            Uihelper.CustomTextfield(
              controller: emailcontroller,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            Uihelper.CustomTextfield(
              controller: passwordcontroller,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Padding(padding: EdgeInsets.only(right: 20,),child: Uihelper.CustomTextButton(text: "Forgot password?", callback: (){}),
              ),
              
            ],
            ),
            SizedBox(height: 10,),
              Uihelper.CustomButton(callback: (){}, buttonName: "Log in"),
              SizedBox(height: 20,
            
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper.CustomImage(imgurl: "fb.png"),
                  Uihelper.CustomTextButton(text: "Log in with Facebook", callback: (){})
                ],
              ),
              SizedBox(height: 10,
              ),
              Text("OR",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text("Don’t have an account?",style: TextStyle(fontSize: 14,color: Colors.white),
  
                  ),
                  Uihelper.CustomTextButton(text: "Sign Up", callback: (){})
                ],
              )
          ],
        ),
      ),
    );
  }
}

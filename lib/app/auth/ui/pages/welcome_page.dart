import 'package:firebase_auth/app/auth/ui/components/button_service.dart';
import 'package:firebase_auth/app/auth/ui/components/custom_buttom.dart';
import 'package:firebase_auth/app/auth/ui/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_app.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.675,
                right: MediaQuery.of(context).size.width * 0.75,
              ),
              child: Text(
                "Hi!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(110, 44, 44, 44),
              margin: EdgeInsets.only(bottom: 100),
              elevation: 10,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextFormField(labelText: "Email"),
                    CustomButton(title: "Continue", color: Colors.blue),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    ButtonService(
                      description: "Continue with facebook",
                      icon: Icon(
                        Icons.facebook,
                        color: const Color.fromARGB(255, 2, 96, 139),
                        size: 25,
                      ),
                    ),
                    ButtonService(
                      description: "Continue with google",
                      icon: SizedBox(
                        height: 20,
                        child: Image.asset("assets/images/google_icon.png"),
                      ),
                    ),
                    ButtonService(
                      description: "Continue with github",
                      icon: SizedBox(
                        height: 20,
                        child: Image.asset("assets/images/github_icon.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.055,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed:
                                () =>
                                    Navigator.of(context).pushNamed("/signup"),
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

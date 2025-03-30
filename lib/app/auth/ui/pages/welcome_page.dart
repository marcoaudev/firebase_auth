import 'package:auth/app/auth/ui/pages/components/button_service.dart';
import 'package:auth/app/auth/ui/pages/components/custom_buttom.dart';
import 'package:auth/app/auth/ui/pages/components/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
                  bottom: MediaQuery.of(context).size.height * 0.775,
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
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextFormField(
                        labelText: "Email",
                        controller: _emailController,
                        validator: (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return 'Please enter an email';
                          }
                          // Regular expression to validate email
                          final emailRegex = RegExp(
                            r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$',
                          );
                          if (!emailRegex.hasMatch(p0)) {
                            return 'Invalid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        labelText: "Password",
                        controller: _passwordController,
                        obscureText: obscureText,
                        suffixIcon: IconButton(
                          onPressed:
                              () => setState(() {
                                obscureText = !obscureText;
                              }),
                          icon: Icon(
                            obscureText
                                ? CupertinoIcons.eye
                                : CupertinoIcons.eye_slash,
                          ),
                        ),
                        validator: (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return 'Please enter an password';
                          }

                          if (p0.length < 8) {
                            return 'Your password must has 8 characters';
                          }
                          return null;
                        },
                      ),
                      CustomButton(
                        title: "Continue",
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
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
                                  () => Navigator.of(
                                    context,
                                  ).pushNamed("/signup"),
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
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

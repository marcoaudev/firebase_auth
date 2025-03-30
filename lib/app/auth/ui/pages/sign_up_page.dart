import 'package:auth/app/auth/ui/pages/components/custom_buttom.dart';
import 'package:auth/app/auth/ui/pages/components/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
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
              Positioned(
                top: MediaQuery.of(context).padding.top + 20,
                right: MediaQuery.of(context).size.width * 0.85,
                child: IconButton(
                  icon: Icon(
                    CupertinoIcons.back,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.675,
                  right: MediaQuery.of(context).size.width * 0.6,
                ),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(110, 44, 44, 44),
                elevation: 10,
                margin: EdgeInsets.only(bottom: 170),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.475,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Row(
                          children: [
                            Text(
                              "Looks like you don't have an account.\nLet's create a new account:",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "By selecting Agree and continue below, you agree to",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Terms of Service and Privacy Policy",
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        title: "Agree and continue",
                        color: Colors.blue,
                        onPressed: () {
                        },
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

import 'package:auth/app/auth/ui/pages/sign_up_page.dart';
import 'package:auth/app/auth/ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routes: {
        "/": (context) => const WelcomePage(),
        "/signup": (context) => const SignUpPage(),
      },
    );
  }
}

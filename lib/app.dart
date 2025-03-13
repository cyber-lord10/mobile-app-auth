import 'package:flutter/material.dart';
import '/pages/auth/signin.dart';
import '/pages/auth/signup.dart';
import '/pages/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/auth/signup': (context) => Signup(),
        '/auth/signin': (context) => Signin(),
      },
    );
  }
}

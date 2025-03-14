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
      title: 'Sign Up',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          displayMedium: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          displaySmall: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          headlineLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          headlineMedium: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          headlineSmall: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          titleLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
          titleMedium: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
          titleSmall: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          bodySmall: TextStyle(fontFamily: 'Poppins'),
          labelLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
          labelSmall: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.black,
          secondary: Colors.white,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/auth/signup': (context) => Signup(),
        '/auth/signin': (context) => Signin(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_mall/common/view/splash_screen.dart';
import 'package:shopping_mall/signup/view/login_screen.dart';
import 'package:shopping_mall/signup/view/signup_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

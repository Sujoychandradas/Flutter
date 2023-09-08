import 'package:drag_and_drop/home.dart';
import 'package:drag_and_drop/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => Home(),
        '/splash': (context) => SplashScreen()
      },
      initialRoute: '/splash',
    );
  }
}

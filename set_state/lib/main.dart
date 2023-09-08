import 'package:flutter/material.dart';
import 'package:set_state/home.dart';
import 'package:set_state/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => Home(),
      },
      initialRoute: '/splash',
    );
  }
}

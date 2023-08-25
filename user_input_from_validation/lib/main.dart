import 'package:flutter/material.dart';
import 'package:user_input_from_validation/login.dart';
import 'package:user_input_from_validation/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User-Input',
      routes: {
                '/splash': (context) => SplashScreen(),
        '/login': (context) => Login(),

      },
      initialRoute: '/splash',
    );
  }
}

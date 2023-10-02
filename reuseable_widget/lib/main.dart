import 'package:flutter/material.dart';
import 'package:reuseable_widget/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home' :(context) => Home(),
      },
      initialRoute: '/home',
    );
  }
}

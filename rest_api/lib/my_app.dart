import 'package:flutter/material.dart';
import 'package:rest_api/home.dart';
import 'package:rest_api/splashscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => Home(),
      },
      initialRoute: '/splash',
    );
  }
}

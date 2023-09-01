import 'package:flutter/material.dart';

import 'package:googlemap/splashscreen.dart';

import 'example.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => SplashScreen(),
        '/example': (context) => Example(),
      },
      initialRoute: '/splash',
    );
  }
}

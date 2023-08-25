import 'package:flutter/material.dart';
import 'package:navigation_and_route/login.dart';
import 'package:navigation_and_route/onboarding.dart';
import 'package:navigation_and_route/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

//Navigation & Route
//Push
//Pop
//Push Replacement
//Push Name
//Push name with replacement

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      routes: {
        '/spalsh': (context) => SplashScreen(),
        '/onboarding': (context) => Onboarding(),
        '/login': (context) => Login(),
      },
      initialRoute: '/spalsh',
    );
  }
}
//
// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Navigation and Route'),titleTextStyle: TextStyle(fontSize: 20),),

//     );
//   }
// }

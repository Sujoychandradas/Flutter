import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/counter.dart';
import 'package:provider_statemangement/home.dart';
import 'package:provider_statemangement/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Counter(),
      ),
    ],
    child: const MyApp(),
  ));
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

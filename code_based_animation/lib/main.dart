import 'package:code_based_animation/animaated_opacity.dart';
import 'package:code_based_animation/animated_Icon_flutter.dart';
import 'package:code_based_animation/animated_container_Flutter.dart';
import 'package:code_based_animation/animated_default_textstyle_flutter.dart';
import 'package:code_based_animation/animated_positioned.dart';
import 'package:code_based_animation/hero_animation.dart';
import 'package:code_based_animation/home.dart';
import 'package:code_based_animation/splashscreen.dart';
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/Hero': (context) => HeroAnimationFlutter(),
        '/opacity': (context) => animatedOpacity(),
        '/positioned': (context) => AnimatedPositionedFlutter(),
        '/animatedText': (context) => AnimatedDefaultTextStyleFlutter(),
        '/animatedContainer': (context) => AnimatedContainerFlutter(),
        '/animatedIcons' :(context) => AnimatedIconsFlutter(),
      },
      initialRoute: '/splash',
    );
  }
}

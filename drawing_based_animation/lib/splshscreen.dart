import 'package:drawing_based_animation/example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_) {
        return PlayPauseAnimation();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/google.png',
            width: 50,
          ),
          Text(
            'Google',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          )
        ]),
      ),
    );
  }
}

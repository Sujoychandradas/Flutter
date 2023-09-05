// import 'package:code_based_animation/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (_) {
              return Home();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'images/google.png',
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_and_route/onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => Onboarding()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google.png',
            width: 70,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Learning Approach',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          )
        ],
      )),
    );
  }
}

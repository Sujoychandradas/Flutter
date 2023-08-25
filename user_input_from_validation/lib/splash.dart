import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_input_from_validation/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(context, CupertinoPageRoute(builder: (_) {
        return Login();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                height: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Splash Screen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ]),
      ),
    );
  }
}

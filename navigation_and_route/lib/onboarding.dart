import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_and_route/login.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding-Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Login()));
              },
              child: Text('push'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    //It will not track like stack
                    context,
                    CupertinoPageRoute(builder: (_) => Login()));
              },
              child: Text('Push-replacement'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Push Named'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Push replacement Named'),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Pop'),
            // ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

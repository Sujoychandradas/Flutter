import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Vs Gesture Detector'),
      ),
      body: Center(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('gesture detected');
            },
            child: Text(
              'Click Me',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Divider(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('Gesture Detected');
                },
                child: Container(
                  height: 200,
                  width: 180,
                  color: Colors.purple,
                ),
              ),
              VerticalDivider(),
              InkWell(
                onTap: () {
                  print('Inkwell');
                },
                splashColor: Colors.white,
                child: Ink(
                  //Ink use korle container & material ancestor lagbe na
                  height: 200,
                  width: 180,
                  color: Colors.blue,
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

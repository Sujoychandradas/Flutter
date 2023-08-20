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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning Approach',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //             Stack(
              //   clipBehavior: Clip.none,
              //   alignment: Alignment.center,
              //   children: [
              //     Container(
              //       height: 400,
              //       width: 400,
              //       color: Colors.green,
              //     ),
              //     // Container(
              //     //   height: 300,
              //     //   width: 300,
              //     //   color: Colors.red,
              //     // ),
              //     Positioned(
              //       // bottom: 0,
              //       // right: 0,
              //       top: -50,
              //       child: Container(
              //         height: 200,
              //         width: 200,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ],
              // )
              Container(
                height: 200,
                width: 200,
                color: Colors.lightBlue,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              )
            ]),
      ),
    );
  }
}

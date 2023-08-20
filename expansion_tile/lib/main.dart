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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Title'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ExpansionTile(
            title: Text('This is expansion tile'),
            subtitle: Text('Subtitle'),
            leading: CircleAvatar(),
            children: [
              Container(
                height: 200,
                color: Colors.green,
              )
            ],
          )
        ]),
      ),
    );
  }
}

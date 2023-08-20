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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      // endDrawer: Drawer(),
      endDrawer: Container(
        width: 200,
        color: Colors.blue,
      ),
      appBar: AppBar(
        actions: [Icon(Icons.search)],
        title: Text('Drawer Vs End Drawer'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _scaffoldkey.currentState!.openEndDrawer(),
          child: Text('Open Drawer'),
        ),
      ),
    );
  }
}

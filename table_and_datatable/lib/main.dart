import 'package:flutter/material.dart';
import 'package:table_and_datatable/example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/example':(context) => Example()
      },initialRoute: '/example',
    );
  }
}

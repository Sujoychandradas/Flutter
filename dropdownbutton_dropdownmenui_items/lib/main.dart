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
  List<String> _gender = ['Male', 'Female', 'Others'];
  String _value = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.search)],
          title: Text('Drop-Down Button'),
        ),
        body: Center(
          child: DropdownButton(
            value: _value,
            items: _gender.map((String value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _value = value!;
              });
            },
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Set State',
          ),
        ),
        body: Center(
          child: Text(
            _cnt.toString(),
            style: TextStyle(fontSize: 50),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _cnt++;
              print(_cnt);
            });
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
              // BorderRadiusDirectional.only(topStart: Radius.circular(10))),
              ),
        ));
  }
}

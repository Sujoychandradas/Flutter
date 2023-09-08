import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/another.dart';
import 'package:provider_statemangement/counter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Provider',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => Another()));
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: Center(
          child: Text(
            counter.cnt.toString(),
            style: TextStyle(fontSize: 50),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            return counter.counterDAta();
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
              // BorderRadiusDirectional.only(topStart: Radius.circular(10))),
              ),
        ));
  }
}

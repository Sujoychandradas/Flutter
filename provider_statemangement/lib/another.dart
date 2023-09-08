import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/counter.dart';

// ignore: must_be_immutable
class Another extends StatelessWidget {
  // int? _counter;

  // Another(this._counter);
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Another'),
      ),
      body: Center(
        child: Text(
          // _counter.toString(),
          counter.cnt.toString(),

          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

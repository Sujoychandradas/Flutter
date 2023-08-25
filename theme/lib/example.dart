import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Learning Approach'),
          Text('Learn everything with easy explaination'),
          ElevatedButton(onPressed: () {}, child: Text('Elevated Button'))
        ]),
      ),
    );
  }
}

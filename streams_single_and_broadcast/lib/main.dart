import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  List<String> languages = [];
  StreamController _streamController = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Languages')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          TextFormField(
            controller: _controller,
          ),
          SizedBox(
            width: 350,
            child: ElevatedButton(
                onPressed: () {
                  final input = _controller.text;
                  languages.add(input);
                  _streamController.sink.add(languages);
                  _controller.clear();
                },
                child: const Text('Add new languages')),
          ),
          Expanded(
              child: StreamBuilder(
            stream: _streamController.stream,
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, index) {
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data[index]),
                      ),
                    );
                  },
                );
              } else {
                return Center(
                    child: Text(
                  'Empty List',
                  style: TextStyle(fontSize: 40),
                ));
              }
            },
          ))
        ]),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String baseUrl = 'https://api.nstack.in/v1/todos/';

  List data = [];

  Future<void> _createData(title, description) async {
    final response = await http.post(Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "title": title,
          "description": description,
          "is_completed": false
        }));

    if (response.statusCode == 201) {
      print('Data Added successfully');
      _titleController.clear();
      _descriptionController.clear();
    } else {
      print('Failed to create data');
    }
  }

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(baseUrl));
    final json = jsonDecode(response.body);
    final result = json['items'];
    setState(() {
      data = result;
    });
    if (response.statusCode == 200) {
      print('Data fetched successfully');
      print(response.body);
    } else {
      print('Failed to fetch data');
    }
  }

  Future<void> _deleteData(id) async {
    final response = await http.delete(Uri.parse(baseUrl + id.toString()));
    if (response.statusCode == 200) {
      print('Data deleted successfully');
      _fetchData();
    } else {
      print('Failed to delete data');
    }
  }

  Future<void> _updateData(id, title, description) async {
    final response = await http.put(Uri.parse(baseUrl + id.toString()),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "title": title,
          "description": description,
          "is_completed": false
        }));
    if (response.statusCode == 200) {
      print('Data updated successfully');
      Navigator.pop(context);
      _fetchData();
    } else {
      print('Failed to update data');
    }
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _updatedTitleController = TextEditingController();
  final TextEditingController _updated_DescriptionController =
      TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Api Crude'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(hintText: 'Title'),
          ),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(hintText: 'Description'),
          ),
          ElevatedButton(
            onPressed: () {
              _createData(_titleController.text, _descriptionController.text);
            },
            child: Text('Post a new Todo'),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _fetchData,
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return ListTile(
                      title: Text(data[index]['title']),
                      subtitle: Text(data[index]['description']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return Dialog(
                                      child: Container(
                                        height: 250,
                                        child: Column(children: [
                                          TextField(
                                            controller: _updatedTitleController,
                                            decoration: InputDecoration(
                                                hintText: 'Update Title'),
                                          ),
                                          TextField(
                                            controller:
                                                _updated_DescriptionController,
                                            decoration: InputDecoration(
                                                hintText: 'Update Description'),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              _updateData(
                                                  data[index]['_id'],
                                                  _updatedTitleController.text,
                                                  _updated_DescriptionController
                                                      .text);
                                            },
                                            child: Text('Update Todo'),
                                          )
                                        ]),
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              _deleteData(data[index]['_id']);
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ));
                },
                itemCount: data.length,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

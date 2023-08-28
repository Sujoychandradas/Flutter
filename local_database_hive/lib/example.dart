import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Box? notepad;

  @override
  void initState() {
    // TODO: implement initState
    notepad = Hive.box('notepad');
    super.initState();
  }

  TextEditingController _controller = TextEditingController();
  TextEditingController _updateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Database'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: 'Write Something'),
          ),
          SizedBox(
            width: 400,
            child: ElevatedButton(
              onPressed: () async {
                try {
                  final userInput = _controller.text;
                  await notepad!.add(userInput);
                  _controller.clear();
                  Fluttertoast.showToast(msg: 'Added Successfull');
                } catch (e) {
                  Fluttertoast.showToast(
                    msg: e.toString(),
                  );
                }
              },
              child: Text('Add New-User Data'),
            ),
          ),
          Expanded(
              //     child: Container(
              //   // color: Colors.green,

              // ),
              child: ValueListenableBuilder(
                  valueListenable: Hive.box('notepad').listenable(),
                  builder: (context, box, widget) {
                    return ListView.builder(
                      itemCount: notepad!.keys.toList().length,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 5,
                          child: ListTile(
                            title: Text(
                              notepad!.getAt(index).toString(),
                            ),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () async {
                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return Dialog(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Container(
                                                    height: 200,
                                                    child: Column(children: [
                                                      TextField(
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                'write something'),
                                                        controller:
                                                            _updateController,
                                                      ),
                                                      ElevatedButton(
                                                          onPressed: () {
                                                            final updateData =
                                                                _updateController
                                                                    .text;
                                                            notepad!.putAt(
                                                                index,
                                                                updateData);
                                                            _updateController
                                                                .clear();
                                                            Navigator.pop(
                                                                context);
                                                                Fluttertoast.showToast(
                                            msg: 'Updated Successfully');
                                                          },
                                                          child: Text('Update'))
                                                    ]),
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                      )),
                                  IconButton(
                                      onPressed: () async {
                                        await notepad!.deleteAt(index);
                                        Fluttertoast.showToast(
                                            msg: 'Deleted Successfully');
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  })

              // ListView.builder(
              //   itemCount: notepad!.keys.toList().length,
              //   itemBuilder: (_, index) {
              //     return Card(
              //       elevation: 5,
              //       child: ListTile(
              //         title: Text(
              //           notepad!.getAt(index).toString(),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              )
        ]),
      ),
    );
  }
}

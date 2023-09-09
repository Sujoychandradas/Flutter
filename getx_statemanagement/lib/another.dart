import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_statemanagement/counter.dart';

// ignore: must_be_immutable
class Another extends StatelessWidget {
  // int? _counter;

  // Another(this._counter);
  final box = GetStorage();
  String name = "Hi! How are you?";
  @override
  Widget build(BuildContext context) {
    final counterController = Get.find<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Another'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              counterController.value.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              box.write('name', name);
            },
            child: Text('storedata'.tr),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          ElevatedButton(
            onPressed: () {
              print(box.read('name'));
            },
            child: Text('retrivedata'.tr),
          ),
        ],
      ),
    );
  }
}

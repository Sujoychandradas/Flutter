import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  final _picker = ImagePicker();
  XFile? image;
  List<XFile>? images;

  fromCamera() async {
    image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  fromGellary() async {
    image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  pickMultipleImages() async {
    images = await _picker.pickMultiImage();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker')),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image == null
                  ? Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.blue,
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        File(image!.path),
                        width: 200,
                      ),
                    ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    onPressed: () => fromCamera(),
                    icon: Icon(
                      Icons.camera,
                      color: Colors.purple,
                    )),
                IconButton(
                  onPressed: () => fromGellary(),
                  icon: Icon(
                    Icons.photo_outlined,
                    color: Colors.purple,
                  ),
                ),
              ]),
              Divider(
                thickness: 10,
                color: Colors.orange,
              ),
              ElevatedButton(
                  onPressed: () => pickMultipleImages(),
                  child: Text('Choose Multiple Images')),
              SizedBox(
                height: 10,
              ),
              images == null
                  ? Center(
                      child: Text('Empty List'),
                    )
                  : Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  File(images![index].path),
                                  height: 150,
                                ),
                              ),
                            );
                          },
                          itemCount: images!.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

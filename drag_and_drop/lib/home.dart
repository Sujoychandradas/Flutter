import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? imgPath;
  bool onDragStarted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag And Drop'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Draggable(
            data: 'assets/images/google.png',
            child: Image.asset(
              'assets/images/google.png',
              width: 100,
            ),
            feedback: Image.asset(
              'assets/images/google.png',
              width: 100,
            ),
            childWhenDragging: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            ),
            onDragStarted: () {
              setState(() {
                onDragStarted = true;
              });
            },
            onDragEnd: (details) {
              setState(() {
                onDragStarted = false;
              });
            },
          ),
          DragTarget(onAccept: (data) {
            setState(() {
              imgPath = data.toString();
            });
          }, builder: (_, object, list) {
            return Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: onDragStarted == true ? 5 : 0,
                    color: onDragStarted == true
                        ? Colors.blue
                        : Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: imgPath != null
                  ? Image.asset(
                      imgPath!,
                      width: 100,
                    )
                  : SizedBox(),
            );
          })
        ],
      )),
    );
  }
}

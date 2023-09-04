import 'package:flutter/material.dart';

class AnimatedPositionedFlutter extends StatefulWidget {
  @override
  State<AnimatedPositionedFlutter> createState() =>
      _AnimatedPositionedFlutterState();
}

class _AnimatedPositionedFlutterState extends State<AnimatedPositionedFlutter> {
  double _top = 0;
  double _bottom = 0;
  double _left = 0;
  double _right = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Stack(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.purple,
          ),
          AnimatedPositioned(
            curve: Curves.bounceInOut,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _top = 200;
                  _left = 200;
                });
              },
              icon: Icon(
                Icons.search,
                color: Colors.yellow,
                size: 50,
              ),
            ),
            duration: Duration(seconds: 2),
            top: _top,
            bottom: _bottom,
            right: _right,
            left: _left,
          )
        ],
      )),
    );
  }
}

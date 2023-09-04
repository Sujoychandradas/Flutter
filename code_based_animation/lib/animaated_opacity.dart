import 'package:flutter/material.dart';

class animatedOpacity extends StatefulWidget {
  @override
  State<animatedOpacity> createState() => _animatedOpacityState();
}

class _animatedOpacityState extends State<animatedOpacity> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 100),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
              )),
          SizedBox(
            height: 10,
          ),
          Slider(
              value: _opacity,
              onChanged: (onChanged) {
                setState(() {
                  _opacity = onChanged;
                });
              })
        ],
      ),
    );
  }
}

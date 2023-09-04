import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleFlutter extends StatefulWidget {
  const AnimatedDefaultTextStyleFlutter({super.key});

  @override
  State<AnimatedDefaultTextStyleFlutter> createState() =>
      _AnimatedDefaultTextStyleFlutterState();
}

class _AnimatedDefaultTextStyleFlutterState
    extends State<AnimatedDefaultTextStyleFlutter> {
  bool _first = true;
  double _fontsize = 35;
  Color _color = Colors.green;
  double _height = 100;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InkWell(
          onTap: () {
            setState(
              () {
                _fontsize = _first ? 40 : 35;
                _color = _first ? Colors.red : Colors.blue;
                _height = _first ? 100 : 130;
                _first = !_first;
              },
            );
          },
          child: AnimatedDefaultTextStyle(
            curve: Curves.linear,
            duration: Duration(seconds: 5),
            style: TextStyle(
                fontSize: _fontsize,
                color: _color,
                fontWeight: FontWeight.bold),
            child: Text('This is Sujoy'),
          ),
        ),
      ),
    );
  }
}

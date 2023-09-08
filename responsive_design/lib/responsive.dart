import 'dart:html';

import 'package:flutter/material.dart';

class Resposive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Resposive(
      {required this.mobile, required this.tablet, required this.desktop});

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width < 480) {
      return mobile;
    } else if (_size.width < 800) {
      return tablet;
    } else {
      return desktop;
    }
  }
}

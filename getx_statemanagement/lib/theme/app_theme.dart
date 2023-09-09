import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme(context) => ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(),
        primarySwatch: Colors.blue,
      );

  ThemeData darkTheme(context) => ThemeData(
      colorScheme: const ColorScheme.dark(), primarySwatch: Colors.amber);
}

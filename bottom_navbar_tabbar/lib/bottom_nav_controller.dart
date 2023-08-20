import 'package:bottom_navbar_tabbar/pages/chat_screen.dart';
import 'package:bottom_navbar_tabbar/pages/home_screen.dart';
import 'package:bottom_navbar_tabbar/pages/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [
    HomeScreen(),
    SearchScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}

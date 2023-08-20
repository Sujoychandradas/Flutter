import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
          tabs: [
            Tab(
              text: 'One',
            ),
            Tab(
              text: 'Two',
            )
          ],
        )),
        body: TabBarView(
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

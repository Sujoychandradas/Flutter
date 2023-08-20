import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _pageController.nextPage(
      //         duration: Duration(seconds: 1), curve: Curves.bounceOut);
      //   },
      //   child: Icon(Icons.add),
      // ),
      appBar: AppBar(
        title: Text('Different types of views..'),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2, crossAxisCount: 2),
          // controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.white,
            ),
          ]),

      //  body: PageView(
      //     controller: _pageController,
      //     scrollDirection: Axis.vertical,
      //     children: [
      //       Container(
      //         height: 200,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         height: 200,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 200,
      //         color: Colors.purple,
      //       ),
      //       Container(
      //         height: 200,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         height: 200,
      //         color: Colors.grey,
      //       ),
      //       Container(
      //         height: 200,
      //         color: Colors.white,
      //       ),
      //     ]),

      //   body: ListView(children: [
      //   Container(
      //     height: 200,
      //     color: Colors.red,
      //   ),
      //   Container(
      //     height: 200,
      //     color: Colors.blue,
      //   ),
      //   Container(
      //     height: 200,
      //     color: Colors.purple,
      //   ),
      //   Container(
      //     height: 200,
      //     color: Colors.green,
      //   ),
      //   Container(
      //     height: 200,
      //     color: Colors.grey,
      //   ),
      //   Container(
      //     height: 200,
      //     color: Colors.white,
      //   ),
      // ]),

      // SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(children: [
      //     Container(
      //       height: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.grey,
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.white,
      //     ),
      //   ]),
      // ),
    );

    //If widget structure is same then we can use scroll view other wise singlechildscrollview
  }
}

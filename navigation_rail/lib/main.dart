import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _pages = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.amber,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning-Approach'),
      ),
      body: Row(children: [
        NavigationRail(
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            // extended: true, navigation label rail none korte hobe
            // elevation: 5,
            // destinations: [
            //   NavigationRailDestination(
            //     icon: Icon(Icons.home),
            //     label: Text('Home'),
            //   ),
            //   NavigationRailDestination(
            //     icon: Icon(Icons.add_shopping_cart),
            //     label: Text('MyAds'),
            //   ),
            //   NavigationRailDestination(
            //     icon: Icon(Icons.search),
            //     label: Text('Search'),
            //   ),
            //   NavigationRailDestination(
            //     icon: Icon(Icons.favorite),
            //     label: Text('Favourit'),
            //   ),
            // ],
            //
            elevation: 5,
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Image.asset(
                'assets/images/coding.png',
                width: 45,
              ),
            ),
            destinations: [
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text('Home'),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text('My Shopping'),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text('Search'),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text('Favourit'),
                ),
              ),
            ],
            selectedIndex: _selectedIndex),
        Expanded(child: _pages[_selectedIndex]),
      ]),
    );
  }
}

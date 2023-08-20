import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  aleartDialogue() {
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text('Exit Dialogue'),
            content: Row(children: [
              ElevatedButton(onPressed: () {}, child: Text('Yes')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text('No'))
            ]),
          );

          //We can create custom aleart dialogue using this
          //  Dialog(
          //     child: Container(
          //       height: 200,
          //     ),
          //   );

          // AlertDialog(
          //   title: Text('Exit Dialogue'),
          //   content: Row(children: [
          //     ElevatedButton(onPressed: () {}, child: Text('Yes')),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     ElevatedButton(onPressed: () {}, child: Text('No'))
          //   ]),
          // );
        });
  }

  bottomsheet() {
    return showModalBottomSheet(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )),
        isScrollControlled:
            true, //By using this we can fix the height of bottom sheet
        context: context,
        builder: (_) {
          return Container(
            // color: Colors.blue,
            height: 400,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aleart Dialogue & Bottom Sheet'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              aleartDialogue();
            },
            child: Text('Aleart-Dialogue'),
          ),
          ElevatedButton(
            onPressed: () {
              bottomsheet();
            },
            child: Text('Bottom-Sheet'),
          ),
        ]),
      ),
    );
  }
}

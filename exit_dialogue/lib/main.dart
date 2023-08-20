import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  _getOutofApp() {
    if (Platform.isIOS) {
      try {
        exit(0);
      } catch (e) {
        print(e);
      }
    } else {
      try {
        SystemNavigator.pop();
      } catch (e) {
        print(e);
      }
    }
  }

  exitDialgoue(context) {
    showDialog(
        context: context,
        builder: (_) {
          return

              //We can create custom aleart dialogue using this
              Dialog(
            child: Container(
              height: 150,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Are you sure to exit?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _getOutofApp();
                            },
                            child: Text('Yes'),
                          ),
                          VerticalDivider(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('No'),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exitDialgoue(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Aleart Dialogue & Bottom Sheet'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                exitDialgoue(context);
              },
              child: Text('Exit-Dialogue'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     bottomsheet();
            //   },
            //   child: Text('Bottom-Sheet'),
            // ),
          ]),
        ),
      ),
    );
  }
}

import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  popUP() {
    return showDialog(
        context: context,
        builder: (_) => Dialog(
              child: Container(
                height: 160,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(children: [
                    const Text(
                      'Internet Status',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      'There is no internet connection',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Dissmiss'),
                        ),
                        TextButton(
                          onPressed: () {
                            checkNetwork();
                            Navigator.pop(context);
                          },
                          child: const Text('Try Again'),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ));
  }

  late StreamSubscription subscription;
  connectivity() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        popUP();
      }
    });
  }

  checkNetwork() async {
    try {
      final resut = await InternetAddress.lookup('google.com');
      print(resut.first);
      if (resut.isNotEmpty && resut.first.rawAddress.isNotEmpty) {
        print('Connected to the internet');
      }
    } on SocketException {
      return popUP();
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    connectivity();
    checkNetwork();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Status'),
      ),
    );
  }
}

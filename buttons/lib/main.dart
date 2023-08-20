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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons')),
      body: Column(children: [
        //Text Button
        TextButton(
          onPressed: () {
            print('clicked');
          },
          child: Text('Text Button'),
        ),
        ElevatedButton(
          onPressed: () {
            print('clicked');
          },
          child: Text('Elevated Button'),
        ),
        //Icon Button
        IconButton(
          onPressed: () {
            print('cliked');
          },
          icon: Icon(Icons.add),
        ),
        //Floating Action Button
        FloatingActionButton(
          onPressed: () {
            print('cliked');
          },
          child: Icon(Icons.search),
        ),
      ]),
    );
  }
}

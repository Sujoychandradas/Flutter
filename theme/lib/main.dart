import 'package:flutter/material.dart';
import 'package:theme/example.dart';
import 'package:theme/splashscreen.dart';

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
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,

          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          // scaffoldBackgroundColor: Colors.yellow,
          textTheme: TextTheme(
            titleLarge: TextStyle(fontSize: 30),
            bodyMedium: TextStyle(fontSize: 50),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
            ),
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.green, elevation: 0, centerTitle: true),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ))),
      routes: {
        '/splash': (context) => SplashScreen(),
        '/example': (context) => Example(),
      },
      initialRoute: '/splash',
    );
  }
}

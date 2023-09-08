import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_design/home.dart';
import 'package:responsive_design/size_config.dart';
import 'package:responsive_design/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/splash': (context) => SplashScreen(),
//         '/home': (context) => Home(),
//       },
//       initialRoute: '/splash',
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/splash': (context) => SplashScreen(),
            '/home': (context) => Home(),
          },
          initialRoute: '/splash',
        );
      },
    );
  }
}

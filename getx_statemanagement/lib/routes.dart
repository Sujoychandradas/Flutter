//route names
import 'package:get/get.dart';
import 'package:getx_statemanagement/another.dart';
import 'package:getx_statemanagement/home.dart';
import 'package:getx_statemanagement/splash_screen.dart';

String splash = '/splash-screen';
String home = '/home';
String another = '/another';

//Control our page route flow

List<GetPage> getpages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: home,
    page: () => Home(),
  ),
  GetPage(
    name: another,
    page: () => Another(),
  )
];

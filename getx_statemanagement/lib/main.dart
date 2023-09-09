import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_statemanagement/app_languages.dart';
import 'package:getx_statemanagement/counter.dart';
import 'package:getx_statemanagement/routes.dart';
import 'package:getx_statemanagement/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Counter counter = Get.put(Counter());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // routes: {
      //   '/splash': (context) => SplashScreen(),
      //   '/home': (context) => Home(),
      // },
      // initialRoute: '/splash',
      title: 'GetX State-Management',
      translations: AppLanguages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: AppTheme().lightTheme(context),
      darkTheme: AppTheme().darkTheme(context),
      themeMode: ThemeMode.system,
      initialRoute: splash,
      getPages: getpages,
    );
  }
}

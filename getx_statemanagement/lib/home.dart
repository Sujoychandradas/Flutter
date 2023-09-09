import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_statemanagement/another.dart';
import 'package:getx_statemanagement/counter.dart';
import 'package:getx_statemanagement/routes.dart';
import 'package:getx_statemanagement/theme/app_theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _counter = 0;
  // var obj = Counter(); Old way to create an object
  final counterController = Get.find<Counter>();
  final box = GetStorage();
  RxBool darkMode = false.obs;
  Future changeLanguage(contex) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Select your Languages!'),
              content: SizedBox(
                height: 200,
                child: Column(children: [
                  TextButton(
                    onPressed: () => Get.updateLocale(Locale('bn', 'BD')),
                    child: const Text("Bangla"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () => Get.updateLocale(Locale('en', 'US')),
                      child: Text('English'))
                ]),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'appName'.tr,
            style: TextStyle(),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, CupertinoPageRoute(builder: (_) => Another()));
                  // Get.to(Another());
                  Get.toNamed(another);
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: Center(
            child: Column(
          children: [
            Obx(
              () => Text(
                counterController.value.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            ListTile(
              title: Text('darkMode'.tr),
              trailing: Obx(() => Switch(
                  value: darkMode.value,
                  onChanged: (bool value) {
                    darkMode.value = value;
                    Get.changeTheme(darkMode.value == false
                        ? AppTheme().lightTheme(context)
                        : AppTheme().darkTheme(context));
                    box.write('theme', value);
                  })),
            ),
            ListTile(
              title: Text('languages'.tr),
              onTap: () => changeLanguage(context),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => counterController.counterDAta(),
          // onPressed: () => Get.snackbar('Hi', 'How are you?'),
          // onPressed: () =>
          //     Get.defaultDialog(title: 'Hi!', middleText: ' How are you?'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
              // BorderRadiusDirectional.only(topStart: Radius.circular(10))),
              ),
        ));
  }
}

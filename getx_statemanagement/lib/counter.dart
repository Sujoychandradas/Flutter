import 'package:get/state_manager.dart';

class Counter extends GetxController{
  // RxInt cnt = 0.obs;
  RxInt value = 0.obs;

  counterDAta() {
    // cnt.cnt += 1;
    // print(cnt);
    value.value += 5;
    print(value.value);
  }
}

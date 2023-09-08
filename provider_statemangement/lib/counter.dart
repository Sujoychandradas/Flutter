import 'package:flutter/material.dart';

//if we want to use provider we must need extend our class with ChangeNotifier
class Counter extends ChangeNotifier {
  int cnt = 0;

  counterDAta() {
    cnt++;
    print(cnt);
    notifyListeners();
  }
}

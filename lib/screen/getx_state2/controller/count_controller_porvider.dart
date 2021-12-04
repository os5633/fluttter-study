import 'package:flutter/material.dart';

class CountControllerProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

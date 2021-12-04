import 'package:get/get.dart';

class DependencyController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count++;
  }
}

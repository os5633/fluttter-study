import 'package:get/get.dart';

class DependencyController extends GetxController {
  static DependencyController get to => Get.find();
  RxInt count = 0.obs;

  void increment() {
    count++;
  }
}

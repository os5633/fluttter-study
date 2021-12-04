import 'package:flutter_application_1/screen/getx_dependency_injection/controller/dependency_controller.dart';
import 'package:get/get.dart';

class PageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DependencyController>(() => DependencyController());
  }
}

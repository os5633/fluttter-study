import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_dependency_injection/controller/dependency_controller.dart';
import 'package:flutter_application_1/screen/getx_dependency_injection/screen/get_lazy_put.dart';
import 'package:flutter_application_1/screen/getx_dependency_injection/screen/get_put.dart';
import 'package:get/get.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
              child: const Text("GetPut"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
              child: const Text("Get.lazyPut"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
              child: const Text("Get.putAsync"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create(() => DependencyController());
                  }),
                );
              },
              child: const Text("Get.create"),
            ),
          ],
        ),
      ),
    );
  }
}

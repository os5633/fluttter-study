import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_dependency_injection/controller/dependency_controller.dart';
import 'package:get/get.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Lazy Put"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<DependencyController>().increment();
              },
              child: const Text("+"),
            )
          ],
        ),
      ),
    );
  }
}

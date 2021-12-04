import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state2/controller/count_controller_reactive.dart';
import 'package:get/get.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({Key? key}) : super(key: key);
  final controller = Get.put(CountControllerReactive());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "GetX",
              style: TextStyle(fontSize: 25),
            ),
            Obx(
              () {
                return Text(
                  "${controller.count}",
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.count++;
              },
              child: const Text("+", style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}

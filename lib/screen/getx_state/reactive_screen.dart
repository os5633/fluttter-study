import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state/getx_controller.dart';
import 'package:get/get.dart';

class ReactiveScreen extends StatefulWidget {
  const ReactiveScreen({Key? key}) : super(key: key);

  @override
  _ReactiveScreenState createState() => _ReactiveScreenState();
}

class _ReactiveScreenState extends State<ReactiveScreen> {
  final controller = Get.put(ReactiveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reactive"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Reactive"),
            GetX<ReactiveController>(
              builder: (_) {
                return Text("Count1 : ${_.count1}");
              },
            ),
            Obx(
              () {
                return Text("Count2 : ${controller.count2}");
              },
            ),
            Obx(
              () {
                return Text("Sum : ${controller.sum}");
              },
            ),
            Obx(
              () {
                return Text(
                    "User : ${controller.user.value.id}/${controller.user.value.name}");
              },
            ),
            Obx(
              () {
                return Text("List : ${controller.testList}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.count1++;
              },
              child: const Text("Count1 Up"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.count2++;
              },
              child: const Text("Count2 Up"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.change(2, "권오성2");
              },
              child: const Text("Change User"),
            )
          ],
        ),
      ),
    );
  }
}

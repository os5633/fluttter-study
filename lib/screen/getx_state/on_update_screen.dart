import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state/getx_controller.dart';
import 'package:get/get.dart';

class OnUpdateScreen extends StatefulWidget {
  const OnUpdateScreen({Key? key}) : super(key: key);

  @override
  _OnUpdateScreenState createState() => _OnUpdateScreenState();
}

class _OnUpdateScreenState extends State<OnUpdateScreen> {
  final controller = Get.put(BuildController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("On Update"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("On Update"),
            GetBuilder<BuildController>(
              builder: (_) {
                return Text("count : ${_.count}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text("Count Up"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state/on_update_screen.dart';
import 'package:flutter_application_1/screen/getx_state/reactive_screen.dart';
import 'package:get/get.dart';

class GetXStateManagement extends StatefulWidget {
  const GetXStateManagement({Key? key}) : super(key: key);

  @override
  _GetXStateManagementState createState() => _GetXStateManagementState();
}

class _GetXStateManagementState extends State<GetXStateManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const OnUpdateScreen());
              },
              child: const Text("On Update"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const ReactiveScreen());
              },
              child: const Text("Reactive"),
            )
          ],
        ),
      ),
    );
  }
}

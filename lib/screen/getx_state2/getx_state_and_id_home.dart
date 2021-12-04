import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state2/screen/reactive_state_management.dart';
import 'package:flutter_application_1/screen/getx_state2/screen/simple_state_management.dart';

import 'package:get/get.dart';

class StateAndDIHome extends StatelessWidget {
  const StateAndDIHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("상태관리2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const SimpleStateManagement());
              },
              child: const Text("단순 상태관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ReactiveStateManagement());
              },
              child: const Text("반응형 상태관리"),
            )
          ],
        ),
      ),
    );
  }
}

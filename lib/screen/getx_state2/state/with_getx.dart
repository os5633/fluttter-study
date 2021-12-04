import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state2/controller/count_controller_getx.dart';

import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  final controller = Get.put(CountControllerGetX());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "GetX",
            style: TextStyle(fontSize: 25),
          ),
          GetBuilder<CountControllerGetX>(
            id: "first",
            builder: (_) {
              return Text(
                "${_.count}",
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
          GetBuilder<CountControllerGetX>(
            id: "second",
            builder: (_) {
              return Text(
                "${_.count}",
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              controller.increment("first");
            },
            child: const Text("+", style: TextStyle(fontSize: 25)),
          ),
          ElevatedButton(
            onPressed: () {
              controller.increment("second");
            },
            child: const Text("+", style: TextStyle(fontSize: 25)),
          )
        ],
      ),
    );
  }
}

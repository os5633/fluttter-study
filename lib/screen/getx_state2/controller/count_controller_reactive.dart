// ignore_for_file: avoid_print

import 'package:get/get.dart';

class CountControllerReactive extends GetxController {
  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    ever(count, (_) {
      print("EVER : Count가 변경 될때마다 실행");
    });

    once(count, (_) {
      print("ONCE : 처음으로 Count가 변경 되었을 때");
    });

    debounce(
      count,
      (_) {
        print("Debounce : 1초간 디바운스 한 뒤 실행");
      },
      time: const Duration(seconds: 1),
    );

    interval(count, (_) {
      print("Interval : 1초간 인터벌이 지나면 실행");
    }, time: const Duration(seconds: 1));
  }
}

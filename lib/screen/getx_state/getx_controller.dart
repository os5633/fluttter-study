// ignore_for_file: avoid_print

import 'package:get/get.dart';

class BuildController extends GetxController {
  int count = 0;

  increment() {
    count++;
    update();
  }
}

class User {
  int id;
  String name;

  User({
    required this.id,
    required this.name,
  });
}

class ReactiveController extends GetxController {
  RxInt count1 = 0.obs;
  var count2 = 0.obs;
  var user = User(id: 1, name: "권오성").obs;

  List testList = [1, 2, 3, 4, 5].obs;

  get sum => count1.value + count2.value;

  change(int id, String name) {
    user.update((val) {
      val!.name = name;
      val.id = id;
    });
  }

  @override
  void onInit() {
    super.onInit();

    ever(count1, (_) {
      print("EVER : Count1이 변경 될때마다 실행");
    });

    once(count1, (_) {
      print("ONCE : 처음으로 Count1이 변경 되었을 때");
    });

    debounce(
      count1,
      (_) {
        print("Debounce : 1초간 디바운스 한 뒤 실행");
      },
      time: const Duration(seconds: 1),
    );

    interval(count1, (_) {
      print("Interval : 1초간 인터벌이 지나면 실행");
    }, time: const Duration(seconds: 1));
  }
}

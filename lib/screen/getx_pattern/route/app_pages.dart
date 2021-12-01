import 'package:flutter_application_1/screen/getx_pattern/binding/home_binding.dart';
import 'package:flutter_application_1/screen/getx_pattern/ui/home/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}

import 'package:flutter_application_1/screen/getx_pattern/binding/home_binding.dart';
import 'package:flutter_application_1/screen/getx_pattern/ui/home/home_page.dart';
import 'package:flutter_application_1/screen/getx_state/getx_state_management.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: "/",
    page: () => const StudyList(),
  ),
  GetPage(
    name: '/getx_state',
    page: () => const GetXStateManagement(),
  ),
  GetPage(
    name: '/getx_pattern',
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
];

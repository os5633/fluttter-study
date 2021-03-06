import 'package:flutter_application_1/screen/getx_dependency_injection/dependency_manage_page.dart';
import 'package:flutter_application_1/screen/getx_pattern/binding/home_binding.dart';
import 'package:flutter_application_1/screen/getx_pattern/ui/home/home_page.dart';
import 'package:flutter_application_1/screen/getx_state/getx_state_management.dart';
import 'package:flutter_application_1/screen/getx_state2/getx_state_and_id_home.dart';

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
  GetPage(
    name: '/getx_state2',
    page: () => const StateAndDIHome(),
  ),
  GetPage(
    name: '/getx_dependency_injection',
    page: () => const DependencyManagePage(),
  ),
];

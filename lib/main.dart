import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getxstate/getx_state_management.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: StudyList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StudyList extends StatefulWidget {
  const StudyList({Key? key}) : super(key: key);

  @override
  _StudyListState createState() => _StudyListState();
}

class _StudyListState extends State<StudyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter study"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Get.to(const GetXStateManagement());
            },
            title: const Text("GetX State"),
          )
        ],
      ),
    );
  }
}

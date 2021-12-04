import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              Get.toNamed('/getx_state');
            },
            title: const Text("GetX State"),
          ),
          ListTile(
            onTap: () {
              Get.toNamed('/getx_pattern');
            },
            title: const Text("GetX Pattern"),
          ),
          ListTile(
            onTap: () {
              Get.toNamed('/getx_state2');
            },
            title: const Text("GetX State2"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state2/state/with_getx.dart';
import 'package:flutter_application_1/screen/getx_state2/state/with_provider.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("단순 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX()),
            Expanded(child: WithProvider()),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/getx_state2/controller/count_controller_porvider.dart';

import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  WithProvider({Key? key}) : super(key: key);
  late CountControllerProvider _countControllerProvider;

  @override
  Widget build(BuildContext context) {
    _countControllerProvider = Provider.of<CountControllerProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Provider",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            _countControllerProvider.count.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () {
              _countControllerProvider.increment();
            },
            child: const Text("+", style: TextStyle(fontSize: 25)),
          )
        ],
      ),
    );
  }
}

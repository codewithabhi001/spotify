import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/controller.dart';

class Counter extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    print('app restared');
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('Count: ${controller.count}')),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              print('counter');
              controller.increment();
            },
            child: const Text('Counter'),
          )
        ],
      )),
    );
  }
}

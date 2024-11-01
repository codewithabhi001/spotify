import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 10.obs;

  void increment() {
    count++;
  }
}

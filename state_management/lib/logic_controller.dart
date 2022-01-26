import 'package:get/get.dart';

class LogicController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count++;
  }

  RxInt countDouble = 2.obs;

  doubleCount() {
    countDouble++;
  }
}

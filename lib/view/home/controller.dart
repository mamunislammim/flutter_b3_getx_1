import 'dart:developer';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 5;
  RxInt count = 1.obs;
  RxInt count1 = 2.obs;

  incrementCounter() {
    count.value += number * 5;
    log("=======Count : $count===number : $number====");
  }
}

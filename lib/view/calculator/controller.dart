import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  TextEditingController firstInputController = TextEditingController();
  TextEditingController secondInputController = TextEditingController();
  RxDouble result = 0.00.obs;

  sumCalculation() {
    var f = double.parse(firstInputController.text);
    var s = double.parse(secondInputController.text);
    result.value = f + s;
  }

  subCalculation() {
    var f = double.parse(firstInputController.text);
    var s = double.parse(secondInputController.text);
    result.value = f - s;
  }

  mulCalculation() {
    var f = double.parse(firstInputController.text);
    var s = double.parse(secondInputController.text);
    result.value = f * s;
  }

  divCalculation() {
    var f = double.parse(firstInputController.text);
    var s = double.parse(secondInputController.text);
    result.value = f / s;
  }
}

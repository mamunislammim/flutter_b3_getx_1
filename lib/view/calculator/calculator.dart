import 'package:flutter/material.dart';
import 'package:getxproject01/widget/text_field.dart';
import '../../widget/app_text.dart';
import 'package:get/get.dart';
import 'controller.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CalculatorController c = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            _buildRow(title: 'First', textController: c.firstInputController),
            _buildRow(title: 'Second', textController: c.secondInputController),
            Divider(),
            Obx(
              () => CustomTextWidget(
                title: 'The Result is : ${c.result.value.toStringAsFixed(2)}',
                fSize: 22,
              ),
            ),
            Row(
              spacing: 20,
              children: [
                _buildInkWell(icon: '+', onTap: c.sumCalculation),
                _buildInkWell(icon: '-', onTap: c.subCalculation),
                _buildInkWell(icon: 'x', onTap: c.mulCalculation),
                _buildInkWell(icon: '%', onTap: c.divCalculation),
              ],
            ),
          ],
        ),
      ),
    );
  }

  InkWell _buildInkWell({required String icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomTextWidget(title: icon, fSize: 35, color: Colors.green),
        ),
      ),
    );
  }

  Row _buildRow({
    required String title,
    required TextEditingController textController,
  }) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: CustomTextWidget(title: "Enter $title Number : ")),
        Expanded(child: CustomTextField(textController: textController)),
      ],
    );
  }
}

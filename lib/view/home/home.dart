import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    log("====AAAA====${controller.count}==========");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Getx Part-- ${controller.count}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text("You have  ${controller.count}..");
            }),
            Obx(() => Text(" ${controller.count}")),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        child: Text("Tap"),
      ),
    );
  }
}

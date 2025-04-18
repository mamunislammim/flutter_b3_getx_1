import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject01/view/calculator/calculator.dart';
import 'package:getxproject01/view/home/home.dart';
import 'package:getxproject01/view/my_service/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ServiceScreen(),
    );
  }
}

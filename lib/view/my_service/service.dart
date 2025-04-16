import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getxproject01/repository/service.dart';
import 'package:getxproject01/view/my_service/controller.dart';
import 'package:getxproject01/view/my_service/widget/service_card.dart';
import 'package:getxproject01/widget/app_text.dart';
import 'package:get/get.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceController controller = Get.put(ServiceController());

    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: "Service Screen",
          fSize: 25,
          color: Colors.white,
        ),
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
            onPressed: () async {
              controller.getApiDataFun();
            },
            icon: Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Obx(
            //   () => CustomTextWidget(
            //     title: "${controller.myClock}",
            //     fSize: 30,
            //   ),
            // ),
            // SizedBox(height: 20),
            Obx(() => _buildRow(count: controller.serviceList.length)),
            SizedBox(height: 20),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.serviceList.length,
                  shrinkWrap: true,
                  itemBuilder:
                      (context, index) => ServiceCardWidget(
                        coverImage:
                            "https://img-cdn.inc.com/image/upload/f_webp,c_fit,w_1920,q_auto/images/panoramic/getty_509107562_2000133320009280346_351827.jpg",
                        profileImage:
                            "https://img-cdn.inc.com/image/upload/f_webp,c_fit,w_1920,q_auto/images/panoramic/getty_509107562_2000133320009280346_351827.jpg",
                        title: controller.serviceList[index]['title'],
                        details: controller.serviceList[index]['description'],
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildRow({required int count}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidget(title: "Total Service Count : "),
        CustomTextWidget(title: "$count"),
      ],
    );
  }
}

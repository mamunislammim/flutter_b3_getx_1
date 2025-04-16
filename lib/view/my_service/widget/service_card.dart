import 'package:flutter/material.dart';
import '../../../widget/app_text.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({
    super.key,
    required this.coverImage,
    required this.profileImage,
    required this.title,
    required this.details,
  });

  final String coverImage;
  final String profileImage;
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(image: NetworkImage(coverImage),fit: BoxFit.fill),
                ),
              ),
              Positioned(
                bottom: -35,
                left: 10,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(profileImage),
                ),
              ),
            ],
          ),

          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(title: title, fSize: 20),
                CustomTextWidget(title: details),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

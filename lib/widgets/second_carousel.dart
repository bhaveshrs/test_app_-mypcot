import 'package:flutter/material.dart';
import 'package:fluttertest/config/app_images.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';

class ThreeChildBoxSecCarousel extends StatelessWidget {
  const ThreeChildBoxSecCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 80,
            width: 160,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "03 ",
                    style: AppTextStyle.regularText(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text("deliveries",
                      style: AppTextStyle.regularText(
                          fontSize: 14, color: Colors.white)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 30,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage(AppImages.actor), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 60,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage(AppImages.actor2), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 90,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage(AppImages.actor), fit: BoxFit.cover),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CommonBoxCarousel extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final double? height;
  const CommonBoxCarousel(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,  this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 70,
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(text1,
                  style: AppTextStyle.regularText(
                      fontSize: 18, fontWeight: FontWeight.w800)),
              Text(text2,
                  style: AppTextStyle.regularText(
                      fontSize: 12,
                      color: AppColors.fontColor.withOpacity(0.5))),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(text3),
        ],
      ),
    );
  }
}

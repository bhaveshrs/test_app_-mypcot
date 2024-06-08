import 'package:flutter/material.dart';
import 'package:fluttertest/config/app_images.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';

class ThreeChildBox extends StatelessWidget {
  const ThreeChildBox({super.key});

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
                color: AppColors.darkOrange,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "You have ",
                      style: AppTextStyle.regularText(
                          fontSize: 14, color: Colors.white),
                    ),
                    Text(
                      "3 ",
                      style: AppTextStyle.regularText(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("active",
                        style: AppTextStyle.regularText(
                            fontSize: 14, color: Colors.white)),
                  ],
                ),
                Text("Orders from",
                    style: AppTextStyle.regularText(
                        fontSize: 14, color: Colors.white)),
              ],
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

class TwoChildBox extends StatelessWidget {
  const TwoChildBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 80,
            width: 120,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("02  ",
                        style: AppTextStyle.regularText(
                            fontSize: 18, fontWeight: FontWeight.w800)),
                    Text("Pending",
                        style: AppTextStyle.regularText(
                            fontSize: 12,
                            color: AppColors.fontColor.withOpacity(0.5))),
                  ],
                ),
                const Text("Orders from"),
              ],
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
            left: 55,
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
          )
        ],
      ),
    );
  }
}

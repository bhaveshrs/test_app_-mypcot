import 'package:flutter/material.dart';
import 'package:fluttertest/config/app_images.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';

class ThreeChildBoxThirdCarousel extends StatelessWidget {
  const ThreeChildBoxThirdCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80,
          width: 140,
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
              color: AppColors.pink,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "15 ",
                  style: AppTextStyle.regularText(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text("New customers",
                    style: AppTextStyle.regularText(
                        fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          left: 22,
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
          left: 52,
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
          left: 82,
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
          bottom: -10,
          left: 118,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              size: 14,
            ),
          ),
        )
      ],
    );
  }
}

class SecBoxThirdCarousel extends StatelessWidget {
  final double? height;
  const SecBoxThirdCarousel({super.key, this.height});

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
              Text("1.8 %",
                  style: AppTextStyle.regularText(
                      fontSize: 19, fontWeight: FontWeight.w800)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "no - image",
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}

class ThirdBoxCarousel extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final double? height;
  const ThirdBoxCarousel(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height ?? 70,
          width: 110,
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
              const SizedBox(
                height: 5,
              ),
              Text(text3),
            ],
          ),
        ),
        Positioned(
          right: -5,
          top: 25,
          child: Stack(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.skyBlue, width: 2),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage(AppImages.actor), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 2,
                child: Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -30,
          top: 25,
          child: Stack(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.skyBlue, width: 2),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage(AppImages.actor2), fit: BoxFit.cover),
                ),
              ),
              Positioned(
               right: 5,
                bottom: 2,
                child: Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -52,
          top: 25,
          child: Stack(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.skyBlue, width: 2),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage(AppImages.actor), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                right: 3,
                bottom: 2,
                child: Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

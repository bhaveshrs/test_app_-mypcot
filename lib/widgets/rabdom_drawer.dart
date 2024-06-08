import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/config/app_images.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';

class RandomDrawerContent extends StatelessWidget {
  final List<String> quotes = [
    "The best way to predict the future is to create it.",
    "Life is what happens when you're busy making other plans.",
    "Get busy living or get busy dying.",
    "You only live once, but if you do it right, once is enough.",
    "The purpose of our lives is to be happy."
  ];

  final List<IconData> icons = [
    Icons.star,
    Icons.favorite,
    Icons.lightbulb,
    Icons.cake,
    Icons.local_florist
  ];

  RandomDrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final randomQuote = (quotes..shuffle()).first;
    final randomIcon = (icons..shuffle()).first;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Random Quote",
            style: AppTextStyle.regularText(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.fontColor,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(
                randomIcon,
                size: 30,
                color: AppColors.orange,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  randomQuote,
                  style: AppTextStyle.regularText(
                    fontSize: 16,
                    color: AppColors.fontColor.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
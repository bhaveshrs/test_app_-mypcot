import 'package:flutter/material.dart';
import 'package:fluttertest/config/appcolors.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Coming soon",
          style: AppTextStyle.regularText(
              fontSize: 34, color: AppColors.fontColor),
        ),
      ),
    );
  }
}

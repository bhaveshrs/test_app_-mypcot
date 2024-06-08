import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/config/appcolors.dart';

class CustomNavBarButton extends StatelessWidget {
  final String icon;
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const CustomNavBarButton({
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: isSelected
                  ? AppColors.fontColor
                  : AppColors.fontColor.withOpacity(0.5),
            ),
            Text(
              text,
              style: TextStyle(
                color: isSelected
                    ? AppColors.fontColor
                    : AppColors.fontColor.withOpacity(0.5),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/widgets/apptextStyle.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 0.4),
                  blurRadius: 3.0,
                ),
              ],
            ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
           SvgPicture.asset(prefixIcon!),
            const SizedBox(width: 8.0),
          ],
          FittedBox(
            child: Text(
              text,
              style: AppTextStyle.regularText(fontSize: 12, fontWeight: FontWeight.w600)
            ),
          ),
          if (suffixIcon != null) ...[
            const SizedBox(width: 8.0),
            Icon(suffixIcon, size: 20.0),
          ],
        ],
      ),
    );
  }
}

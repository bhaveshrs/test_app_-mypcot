import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircularButton extends StatelessWidget {
  final String icon;
  final EdgeInsets? padding;
  final Function? onPressed;
  final int notificationCount;
  final double? svgSize;

  const CircularButton({
    super.key,
    required this.icon,
     this.padding,
    this.onPressed,
    this.notificationCount = 0, this.svgSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(padding: padding ?? EdgeInsets.all(  5),
            margin: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 0.4),
                  blurRadius: 3.0,
                ),
              ],
            ),
            child: GestureDetector(
                onTap: () => onPressed?.call(),
                child: SvgPicture.asset(
                  icon,
                  height:svgSize ??  30,
                  width: svgSize ??  30,
                ))),
        if (notificationCount > 0)
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                '$notificationCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}

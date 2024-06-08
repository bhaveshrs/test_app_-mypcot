import "package:flutter/material.dart";

class AppTextStyle {
  static regularText({
    String? text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight
  }) {
    return TextStyle(
        color: color, fontSize: fontSize, fontFamily: "Roboto" , fontWeight:fontWeight );
  }
}

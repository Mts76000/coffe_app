import 'package:flutter/material.dart';

class CustomText {
  static Text basic({
    required String? text,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: 'Sora',
        color: color ?? Colors.white,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}

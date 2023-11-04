import 'package:flutter/material.dart';
import 'package:task/core/constants/app_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.fontWeigh = FontWeight.w600,
      this.fontSize,
      this.color, this.decoration, this.textAlign});

  final String text;
  final FontWeight? fontWeigh;
  final double? fontSize;
  final Color? color;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        decoration: decoration,
        fontSize: fontSize,
        fontWeight: fontWeigh,
        color: color,
        fontFamily: AppFonts.outfit,
      ),
    );
  }
}

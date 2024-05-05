import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  final double? customFontSize;
  final FontWeight? customFontWeight;
  final Color? color;

  const CustomTextWidget({
    super.key,
    required this.title,
    this.color,
    this.customFontSize,
    this.customFontWeight,

  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
      color: color ?? Colors.black,
      fontSize: customFontSize ?? 20,
      fontWeight: customFontWeight ?? FontWeight.w600,
    ),);
  }
}
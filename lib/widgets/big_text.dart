import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:qrcode/colors/app_colors.dart';

class BigText extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight? fontWeight;
  const BigText(
      {Key? key,
      required this.title,
      this.fontWeight = FontWeight.w500,
      this.fontSize = 18})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LocaleText(title,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: AppColors.titleColor,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:qrcode/colors/app_colors.dart';

class TopSliderCard extends StatelessWidget {
  final void Function()? onTap;
  final Color containerColor;
  final Color titleColor;
  final String title;

  const TopSliderCard(
      {Key? key,
      required this.titleColor,
      this.onTap,
      required this.containerColor,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            padding: const EdgeInsets.all(8),
            height: 35,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: AppColors.borderColor,
                width: 2,
              ),
            ),
            child: LocaleText(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: titleColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

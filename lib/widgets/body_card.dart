import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'big_text.dart';

class BodyCard extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  final double width;
  final double fontSize;
  final double borderRadius;
  final Color color;
  final SvgPicture svgImg;
  final String title;

  const BodyCard({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.title,
    required this.svgImg,
    required this.borderRadius,
    required this.fontSize,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: width > 200 ? 12 : 5),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: width > 200
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(90),
                child: svgImg),
            SizedBox(
              width: width > 200 ? 12 : 0,
            ),
            BigText(
              fontSize: width < 300 ? 14 : fontSize,
              title: title,
            ),
          ],
        ),
      ),
    );
  }
}

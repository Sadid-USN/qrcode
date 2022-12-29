import 'package:flutter/material.dart';
import 'package:qrcode/colors/app_colors.dart';
import 'package:qrcode/data/titels.dart';
import 'package:qrcode/widgets/top_slider_card.dart';

class TopSlider extends StatefulWidget {
  const TopSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<TopSlider> createState() => _TopSliderState();
}

int onTapIndex = 0;

class _TopSliderState extends State<TopSlider> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return TopSliderCard(
              title: titles[index].title,
              onTap: () {
                setState(() {
                  onTapIndex = index;
                });
              },
              containerColor: onTapIndex == index
                  ? AppColors.backColor
                  : AppColors.mainBgColor,
              titleColor: onTapIndex == index
                  ? AppColors.mainBgColor
                  : AppColors.backColor,
            );
          }),
    );
  }
}

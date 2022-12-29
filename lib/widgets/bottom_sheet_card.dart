import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qrcode/colors/app_colors.dart';
import 'package:qrcode/constants/assets.dart';
import 'package:qrcode/data/titels.dart';
import 'package:qrcode/pages/langugaes_page.dart';
import 'package:qrcode/widgets/body_card.dart';

class BottomSheetCard extends StatelessWidget {
  const BottomSheetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.mainBgColor,
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.bottomCardColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LangugesPage();
                  }));
                },
                child: SvgPicture.asset(Assets.settings)),
            BodyCard(
              fontSize: 14,
              borderRadius: 90,
              title: titles[0].title,
              color: const Color(0xffCDC1FF),
              height: 55,
              width: 140,
              svgImg: SvgPicture.asset(
                svgAssets[1],
                height: 45,
              ),
            ),
            SvgPicture.asset(
              Assets.person,
            ),
          ],
        ),
      ),
    );
  }
}

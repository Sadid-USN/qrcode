import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qrcode/constants/assets.dart';
import 'package:qrcode/widgets/big_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BigText(
          fontWeight: FontWeight.w600,
          fontSize: 24,
          title: 'mycodes',
        ),
        Stack(
          children: [
            SvgPicture.asset(Assets.bell),
            Positioned(
              left: 16,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: const SizedBox(
                    height: 8.0,
                    width: 8.0,
                    child: ColoredBox(
                      color: Colors.red,
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_svg/svg.dart';

import 'package:qrcode/colors/app_colors.dart';
import 'package:qrcode/constants/assets.dart';
import 'package:qrcode/models/users_model.dart';

class QRCodePage extends StatelessWidget {
  final UsersModel users;
  final int index;
  const QRCodePage({
    Key? key,
    required this.index,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backColor,
          title: const LocaleText('qrcode'),
          centerTitle: true,
        ),
        body: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                users.image.toString(),
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${users.firstName} ${users.lastName}',
                    style: const TextStyle(color: Colors.black, fontSize: 29),
                  ),
                  Text(
                    'Age: ${users.age}',
                    style: const TextStyle(color: Colors.black, fontSize: 29),
                  ),
                  Text(
                    'Gender: ${users.gender}',
                    style: const TextStyle(color: Colors.black, fontSize: 29),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SvgPicture.asset(
                svgAssets[index],
                height: 100,
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:qrcode/colors/app_colors.dart';
import 'package:qrcode/constants/assets.dart';
import 'package:qrcode/models/users_model.dart';
import 'package:qrcode/services/api_services.dart';

class QRCodePage extends StatefulWidget {
  final UsersModel users;
  final int index;
  const QRCodePage({
    Key? key,
    required this.index,
    required this.users,
  }) : super(key: key);

  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  @override
  void initState() {
    setState(() {
      widget.users;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backColor,
        title: const LocaleText('qrcode'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiServices.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('');
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.hasError}'),
            );
          }
          if (snapshot.hasData) {
            var users = snapshot.data!;
            print(users.length);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    widget.users.image.toString(),
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${widget.users.firstName.toString()} ${widget.users.lastName.toString()}',
                    style: const TextStyle(
                        color: AppColors.backColor, fontSize: 25),
                  ),
                  Text(
                    'Age :${widget.users.age.toString()}',
                    style: const TextStyle(
                        color: AppColors.backColor, fontSize: 25),
                  ),
                  Text(
                    'Gender :${widget.users.gender.toString()}',
                    style: const TextStyle(
                        color: AppColors.backColor, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset(
                    svgAssets[widget.index],
                    height: 200,
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('There is no Data'),
            );
          }
        },
      ),
    );
  }
}

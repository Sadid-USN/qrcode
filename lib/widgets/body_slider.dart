import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qrcode/constants/assets.dart';
import 'package:qrcode/data/titels.dart';
import 'package:qrcode/pages/qr_code_page.dart';
import 'package:qrcode/services/api_services.dart';
import 'package:qrcode/widgets/body_card.dart';

class BodySlider extends StatelessWidget {
  const BodySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2 * 1.3,
      child: FutureBuilder(
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
            return ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 12);
                },
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: titles.length - 1,
                itemBuilder: (context, index) {
                  return BodyCard(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return QRCodePage(
                          index: index,
                          users: users[index],
                        );
                      }));
                    },
                    fontSize: 24,
                    borderRadius: 22,
                    title: titles[index + 1].title,
                    color: titles[index + 1].color!,
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2 * 1.8,
                    svgImg: SvgPicture.asset(svgAssets[index]),
                  );
                });
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

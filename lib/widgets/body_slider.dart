import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qrcode/constants/assets.dart';
import 'package:qrcode/controller/user_provider.dart';
import 'package:qrcode/data/titels.dart';
import 'package:qrcode/pages/qr_code_page.dart';
import 'package:qrcode/widgets/body_card.dart';

class BodySlider extends StatefulWidget {
  const BodySlider({
    Key? key,
  }) : super(key: key);

  @override
  State<BodySlider> createState() => _BodySliderState();
}

class _BodySliderState extends State<BodySlider> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
// your code goes here
      Provider.of<UserProvider>(
        context,
        listen: false,
      ).getUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, value, child) {
        return SizedBox(
            height: MediaQuery.of(context).size.height / 2 * 1.3,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 12);
                },
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: titles.length - 1,
                itemBuilder: (context, index) {
                  var users = value.users;
                  // List<UsersModel>? users;
                  return BodyCard(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return QRCodePage(
                          users: users[index],
                          index: index,
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
                }));
      },
    );
  }
}

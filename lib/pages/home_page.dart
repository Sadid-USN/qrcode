import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qrcode/widgets/body_slider.dart';
import 'package:qrcode/widgets/bottom_sheet_card.dart';
import 'package:qrcode/widgets/header.dart';
import 'package:qrcode/widgets/skeleton.dart';
import 'package:qrcode/widgets/top_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const BottomSheetCard(),
      body: isLoading
          ? const CustomSkeleton()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const Header(),
                  const Spacer(),
                  const TopSlider(),
                  const BodySlider(),
                  Spacer(
                    flex: Platform.isIOS ? 2 : 3,
                  ),
                ],
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qrcode/colors/app_colors.dart';

class Titles {
  final String title;
  final Color? color;
  final Color? qrCoolor;

  const Titles({required this.title, this.color, this.qrCoolor});
}

List<Titles> titles = [
  const Titles(
    title: 'mycodes',
    color: AppColors.bgButton1,
  ),
  const Titles(
    title: 'mycar',
    color: AppColors.bgButton1,
  ),
  const Titles(
    title: 'mychild',
    color: AppColors.bgButton2,
  ),
  const Titles(
    title: 'myflat',
    color: AppColors.bgButton3,
  ),
  const Titles(
    title: 'mywallet',
    color: AppColors.bgButton4,
  ),
  const Titles(
    title: 'myphone',
    color: AppColors.bgButton5,
  ),
];

class ButtonColors {
  Color color;
  ButtonColors({required this.color});
}

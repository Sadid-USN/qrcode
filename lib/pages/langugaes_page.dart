import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:qrcode/colors/app_colors.dart';

class LangugesPage extends StatefulWidget {
  const LangugesPage({Key? key}) : super(key: key);

  @override
  State<LangugesPage> createState() => _LangugesPageState();
}

class _LangugesPageState extends State<LangugesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backColor,
        title: const LocaleText('language'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              '🇺🇸 English',
              style: TextStyle(color: AppColors.backColor),
            ),
            onTap: () => LocaleNotifier.of(context)!.change('en'),
          ),
          ListTile(
            title: const Text(
              '🇷🇺 Русский',
              style: TextStyle(color: AppColors.backColor),
            ),
            onTap: () => LocaleNotifier.of(context)!.change('ru'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class PolciyAndPrivacyPage extends StatelessWidget {
  const PolciyAndPrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.white,
        title: Text(
          'سياسة الخصوصية',
          style: FontManger.titleStyle(color: ColorManager.textColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p20,
          right: AppPadding.p20,
          top: AppPadding.p8,
          bottom: AppPadding.p8,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
          ],
        ),
      ),
    );
  }
}

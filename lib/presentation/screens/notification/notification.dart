import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData.fallback(),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'الإشعارات',
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
        child: ListView(
          children: [
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat1.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان الإشعار ',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 50,
                          child: Text(
                            'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                            style: FontManger.hintStyle(
                                color: ColorManager.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'منذ 7 ساعات  ',
                          style: FontManger.hintStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

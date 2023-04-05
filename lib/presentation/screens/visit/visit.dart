import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class Visit extends StatefulWidget {
  const Visit({Key? key}) : super(key: key);

  @override
  State<Visit> createState() => _VisitState();
}

class _VisitState extends State<Visit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'زياراتي',
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
            Container(
              height: 170,
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
                          'المستشفي الرئيسي',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              radius: 13,
                              child: const Icon(
                                Icons.calendar_today,
                                color: ColorManager.iconColor,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'الجمعة 8:34AM - 10:50PM',
                              style: FontManger.hintStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              radius: 13,
                              child: const Icon(
                                Icons.code_off,
                                color: ColorManager.iconColor,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'NO.234567',
                              style: FontManger.hintStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                          ],
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/cat2.png',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'مستشفي المدينة',
                          style: FontManger.titleStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              radius: 13,
                              child: const Icon(
                                Icons.calendar_today,
                                color: ColorManager.iconColor,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'الجمعة 8:34AM - 10:50PM',
                              style: FontManger.hintStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              radius: 13,
                              child: const Icon(
                                Icons.code_off,
                                color: ColorManager.iconColor,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'NO.234567',
                              style: FontManger.hintStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                          ],
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

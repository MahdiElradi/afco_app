import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class AfcoCardPage extends StatelessWidget {
  const AfcoCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.white,
        title: Text(
          'بطاقة أفكو ',
          style: FontManger.titleStyle(color: ColorManager.textColor),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: AppPadding.p20,
                top: AppPadding.p20,
                bottom: 120,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey[100],
                ),
                width: 360,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('images/cardd.png'),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: AppPadding.p20,
                left: AppPadding.p20,
                top: AppPadding.p20,
                bottom: 120,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green[100],
                ),
                width: 360,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('images/caedd2.png'),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                        style:
                            FontManger.bodyStyle(color: ColorManager.textColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

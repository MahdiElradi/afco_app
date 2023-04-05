import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';
import 'card_page/request_card_page.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => CardPageState();
}

class CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(0), // Creates border
              color: Colors.grey[200],
            ),
            tabs: [
              Text(
                ' بطاقاتي',
                style: FontManger.bodyStyle(),
              ),
              Text(
                'أطلبها الأن',
                style: FontManger.bodyStyle(),
              ),
              Text(
                'إهداء بطاقة ',
                style: FontManger.bodyStyle(),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'بطاقاتي',
            style: FontManger.titleStyle(),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p20,
                right: AppPadding.p20,
                top: AppPadding.p8,
                bottom: AppPadding.p8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/cardb.png'),
                  Text(
                    ' لا تتوفر بطاقة حتي الآن',
                    style: FontManger.bodyStyle(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppPadding.p20,
                      right: AppPadding.p20,
                      top: AppPadding.p8,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorManager.buttonColor,
                      ),
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const RequestCardPage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.credit_card,
                                color: const Color(0xffFFFFFF)),
                            Text(
                              ' أطلب بطاقتك الآن',
                              style: FontManger.bodyStyle(
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppPadding.p20,
                      right: AppPadding.p20,
                      top: AppPadding.p8,
                      bottom: AppPadding.p8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text('بطاقة أفراد',
                            style: FontManger.titleStyle(
                                color: ColorManager.textColor)),
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset('images/caedd2.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: CircleAvatar(
                                    backgroundColor: ColorManager.buttonColor,
                                    radius: 4,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Container(
                                  width: 350,
                                  height: 60,
                                  child: Text(
                                    ' أدايبا يسكينج أليايت,سيت دوات أدايبا يسكينج أليايت,سيت دوات لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                    style: FontManger.bodyStyle(
                                        color: ColorManager.textColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: CircleAvatar(
                                    backgroundColor: ColorManager.buttonColor,
                                    radius: 4,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Container(
                                  width: 350,
                                  height: 60,
                                  child: Text(
                                    ' أدايبا يسكينج أليايت,سيت دوات أدايبا يسكينج أليايت,سيت دوات لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                    style: FontManger.bodyStyle(
                                        color: ColorManager.textColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: CircleAvatar(
                                    backgroundColor: ColorManager.buttonColor,
                                    radius: 4,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Container(
                                  width: 350,
                                  height: 60,
                                  child: Text(
                                    ' أدايبا يسكينج أليايت,سيت دوات أدايبا يسكينج أليايت,سيت دوات لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                    style: FontManger.bodyStyle(
                                        color: ColorManager.textColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p20,
                                right: AppPadding.p20,
                                top: AppPadding.p8,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorManager.buttonColor,
                                ),
                                width: double.infinity,
                                height: 50,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const RequestCardPage(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.credit_card,
                                          color: const Color(0xffFFFFFF)),
                                      Text(
                                        ' أطلبها الآن',
                                        style: FontManger.bodyStyle(
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppPadding.p20,
                      right: AppPadding.p20,
                      top: AppPadding.p8,
                      bottom: AppPadding.p8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text('بطاقة عائلية',
                            style: FontManger.titleStyle(
                                color: ColorManager.textColor)),
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset('images/cardd.png'),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: CircleAvatar(
                                    backgroundColor: ColorManager.buttonColor,
                                    radius: 4,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Container(
                                  width: 350,
                                  height: 60,
                                  child: Text(
                                    ' أدايبا يسكينج أليايت,سيت دوات أدايبا يسكينج أليايت,سيت دوات لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                    style: FontManger.bodyStyle(
                                        color: ColorManager.textColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: CircleAvatar(
                                    backgroundColor: ColorManager.buttonColor,
                                    radius: 4,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Container(
                                  width: 350,
                                  height: 60,
                                  child: Text(
                                    ' أدايبا يسكينج أليايت,سيت دوات أدايبا يسكينج أليايت,سيت دوات لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                    style: FontManger.bodyStyle(
                                        color: ColorManager.textColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: CircleAvatar(
                                    backgroundColor: ColorManager.buttonColor,
                                    radius: 4,
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Container(
                                  width: 350,
                                  height: 60,
                                  child: Text(
                                    ' أدايبا يسكينج أليايت,سيت دوات أدايبا يسكينج أليايت,سيت دوات لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                    style: FontManger.bodyStyle(
                                        color: ColorManager.textColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p20,
                                right: AppPadding.p20,
                                top: AppPadding.p8,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorManager.buttonColor,
                                ),
                                width: double.infinity,
                                height: 50,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const RequestCardPage(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.credit_card,
                                          color: const Color(0xffFFFFFF)),
                                      Text(
                                        ' أطلبها الآن',
                                        style: FontManger.bodyStyle(
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                'لديك حساب',
                style: FontManger.titleStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

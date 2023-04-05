import 'package:app1/presentation/screens/setting/setting_page/switch_widget.dart';
import 'package:flutter/material.dart';

import '../../../util/appsize_manager.dart';
import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';
import '../account _nfo_page.dart';
import '../afco_card_page.dart';
import '../help_customer_service_page.dart';
import '../polciy_privacy_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'الإعدادات',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green[100],
                  radius: 30,
                  child: const Icon(
                    Icons.person,
                    color: ColorManager.iconColor,
                    size: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'محمد آحمد',
                      style: FontManger.titleStyle(
                        color: ColorManager.textColor,
                      ),
                    ),
                    Text(
                      'بطاقة عائلية',
                      style: FontManger.hintStyle(
                        color: ColorManager.textColor,
                      ),
                    ),
                    Image.asset(
                      'images/pro.png',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 160,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountInfPage()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: ColorManager.iconColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF26740),
                        ),
                        width: 40,
                        height: 40,
                        child: const Icon(
                          Icons.credit_card,
                          color: ColorManager.textButtonColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'بطاقات أفكو',
                          style: FontManger.bodyStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          child: Text(
                            'يمكنك التعرف على كافة خدمات أفكو وطرق إستخحدامها ',
                            style: FontManger.hintStyle2(
                                color: ColorManager.textColor),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AfcoCardPage()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: ColorManager.iconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4FE4B2),
                        ),
                        width: 40,
                        height: 40,
                        child: const Icon(
                          Icons.notifications,
                          color: ColorManager.textButtonColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الإشعارات',
                          style: FontManger.bodyStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          child: Text(
                            'يمكنك تلقي إشعارات العروض وتفعيل البطاقة',
                            style: FontManger.hintStyle2(
                                color: ColorManager.textColor),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                        width: 30,
                        height: 50,
                        child: SwitchPage(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffFFDD83),
                        ),
                        width: 40,
                        height: 40,
                        child: const Icon(
                          Icons.help,
                          color: ColorManager.textButtonColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'المساعدة',
                          style: FontManger.bodyStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          child: Text(
                            'اذا واجهتك أي مشكلة يمكنك التواصل معنا فيس قسم المساعدة',
                            style: FontManger.hintStyle2(
                                color: ColorManager.textColor),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HelpPage()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: ColorManager.iconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff62235E),
                        ),
                        width: 40,
                        height: 40,
                        child: const Icon(
                          Icons.lock,
                          color: ColorManager.textButtonColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'سياسة الخصوصية',
                          style: FontManger.bodyStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          child: Text(
                            'يمكنك الإطلاع علي كافة قوانين وخدمات التطبيق',
                            style: FontManger.hintStyle2(
                                color: ColorManager.textColor),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PolciyAndPrivacyPage()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: ColorManager.iconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff0404A7),
                        ),
                        width: 40,
                        height: 40,
                        child: const Icon(
                          Icons.front_hand_sharp,
                          color: ColorManager.textButtonColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'صوت للتطبيق',
                          style: FontManger.bodyStyle(
                            color: ColorManager.textColor,
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          child: Text(
                            'إذا أعجبك التطبيق بإمكانك دعمنا بالتصويت لنا',
                            style: FontManger.hintStyle2(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_sharp, color: Color(0xffFE3F60)),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'تسجيل الخروج ',
                  style: FontManger.bodyStyle(
                    color: ColorManager.textColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

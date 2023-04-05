import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.white,
        title: Text(
          'مساعدة',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'كيف يمكننا مساعدتك؟',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorManager.buttonColor,
              ),
              width: 380,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(AppMargin.m16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('images/help.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'أسئلة متكررة',
                          style: FontManger.bodyStyle(
                              color: ColorManager.textButtonColor),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: ColorManager.textButtonColor,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'تواصل معنا',
              style: FontManger.bodyStyle(color: ColorManager.textColor),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class RestorePassEmail extends StatelessWidget {
  const RestorePassEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          'إستعادة كلمة المرور',
          style: FontManger.titleStyle(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/email.png',
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'إفحص بريدك الإلكتروني',
              style: FontManger.titleStyle(),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Text(
                  'لقد قمنا بإرسال التعليمات لإستعادة كلمة المرور ',
                  style: FontManger.bodyStyle(),
                ),
                Text(
                  'الخاصة بك',
                  style: FontManger.bodyStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorManager.buttonColor,
              ),
              width: 380,
              height: 50,
              child: Center(
                child: Text(
                  'إذهب الي البريد الإلكتروني',
                  style: FontManger.bodyStyle(
                    color: const Color(0xffFFFFFF),
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

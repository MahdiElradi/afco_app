import 'package:app1/presentation/screens/signin_signup/restor_pass_nomb.dart';
import 'package:app1/presentation/screens/signin_signup/restore_pass_email.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../util/font_manager.dart';

class RestorePassword extends StatelessWidget {
  const RestorePassword({Key? key}) : super(key: key);

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'كيف تود إستعادة كلمة المرور ؟',
              style: FontManger.titleStyle(
                color: const Color(0xff23623E),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'لقد وجدنا المعلومات التالية مرتبطة بحسابك',
            style: FontManger.titleStyle(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 30),
            child: Row(
              children: [
                RoundCheckBox(
                  size: 15,
                  onTap: (selected) {},
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => RestorePass(),
                      ),
                    );
                  },
                  child: Text(
                    'أرسل الكود الي رقم الهاتف التي ينتهي ب 44',
                    style: FontManger.hintStyle(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 15),
            child: Row(
              children: [
                RoundCheckBox(
                  size: 15,
                  onTap: (selected) {},
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => RestorePassEmail(),
                      ),
                    );
                  },
                  child: Text(
                    'أرسل الكود الي رقم البريد الإلكتروني my**@gmail.com**** ',
                    style: FontManger.hintStyle(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

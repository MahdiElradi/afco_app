import 'package:app1/app/app.dart';
import 'package:flutter/material.dart';

import '../../../util/appsize_manager.dart';
import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';
import '../../setting/polciy_privacy_page.dart';
import '../signin.dart';
import 'checkbox_model.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'إنشاء حساب جديد',
          style: FontManger.titleStyle(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'أهلاً بك في أفكو',
              style: FontManger.titleStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p20),
            child: Text(
              'أدخل إسم المستخدم',
              style: FontManger.bodyStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p20, right: AppPadding.p20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'الإسم الأول ـ الإسم الثاني',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p20, bottom: 10),
            child: Text(
              'أدخل رقم الهاتف',
              style: FontManger.bodyStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p20, right: AppPadding.p20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'رقم الهاتف',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p20, bottom: 10),
            child: Text(
              'أدخل البريد الإلكتروني',
              style: FontManger.bodyStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: AppPadding.p20, left: AppPadding.p20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'email123@gmail.com',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p20, bottom: 10),
            child: Text(
              'أدخل كلمة المرور',
              style: FontManger.bodyStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p20, right: AppPadding.p20),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: '********',
                labelText: 'كلمة المرور',
              ),
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                const MyStatefulWidget(),
                Text(
                  'أوافق علي',
                  style: FontManger.bodyStyle(),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PolciyAndPrivacyPage()),
                    );
                  },
                  child: Text(
                    'شروط وسياسة الخصوصية',
                    style: FontManger.hintStyle(
                      color: ColorManager.iconColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p20, right: AppPadding.p20),
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
                      builder: (_) => MainPage(),
                    ),
                  );
                },
                child: Text(
                  'ابدأ',
                  style: FontManger.titleStyle(
                    color: ColorManager.textButtonColor,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120, left: 120, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/22.png'),
                  radius: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/11.png'),
                  radius: 25,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130, right: 130, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'لديك حساب ؟',
                  style: FontManger.hintStyle(),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SignInPage()),
                    );
                  },
                  child: Text(
                    'سجل الدخول',
                    style: FontManger.hintStyle(
                      color: ColorManager.semiTextColor,
                    ),
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

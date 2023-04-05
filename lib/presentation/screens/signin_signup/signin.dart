import 'package:app1/app/app.dart';
import 'package:app1/presentation/screens/signin_signup/restore_password.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(0), // Creates border
              color: Colors.grey[200],
            ),
            tabs: [
              Text(
                'تسجيل دخول',
                style: FontManger.bodyStyle(),
              ),
              Text(
                'إنشاء حساب',
                style: FontManger.bodyStyle(),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'تسجيل دخول',
            style: FontManger.titleStyle(),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(
                //   height: 25,
                // ),
                Center(
                  child: Text(
                    'لديك حساب',
                    style: FontManger.titleStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'قم بتسجيل الدخول لتسهيل عمليه الشراء وحفظ جميع العمليات في حسابك',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 5),
                  child: Text(
                    'رقم الموبايل او البريد الإلكتروني',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                  padding: const EdgeInsets.only(right: 20, bottom: 5, top: 20),
                  child: Text(
                    'كلمة المرور',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: '********',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const RestorePassword(),
                        ),
                      );
                    },
                    child: Text(
                      'نسيت كلمة المرور',
                      style: FontManger.hintStyle(
                        color: const Color(0xff23623E),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
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
                            builder: (_) => const MainPage(),
                          ),
                        );
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: FontManger.titleStyle(
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 120, left: 120, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/22.png'),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/11.png'),
                        radius: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90, left: 90, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'ليس لديك حساب ؟',
                        style: FontManger.bodyStyle(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'إنشاء حساب',
                          style: FontManger.bodyStyle(
                            color: Color(0xff23623E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'لديك حساب',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'قم بتسجيل الدخول لتسهيل عمليه الشراء وحفظ جميع العمليات في حسابك',
                    style: FontManger.hintStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 5, top: 8),
                  child: Text(
                    'الإسم ',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'ادخل الإسم',
                      hintStyle: FontManger.hintStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 5),
                  child: Text(
                    'رقم الموبايل او البريد الإلكتروني',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'email123@gmail.com',
                      hintStyle: FontManger.hintStyle(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppPadding.p20, bottom: 5, top: AppPadding.p8),
                  child: Text(
                    'كلمة المرور',
                    style: FontManger.bodyStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: '********',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => RestorePassword(),
                        ),
                      );
                    },
                    child: Text(
                      'نسيت كلمة المرور',
                      style: FontManger.hintStyle(
                        color: const Color(0xff23623E),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorManager.buttonColor,
                    ),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'تسجيل الدخول',
                        style: FontManger.titleStyle(
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120, left: 120, top: 8),
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
                  padding: const EdgeInsets.only(
                    right: 90,
                    left: 90,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'ليس لديك حساب ؟',
                        style: FontManger.bodyStyle(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'إنشاء حساب',
                          style: FontManger.bodyStyle(
                            color: Color(0xff23623E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

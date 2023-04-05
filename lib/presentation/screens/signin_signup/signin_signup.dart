import 'package:app1/presentation/screens/signin_signup/signin.dart';
import 'package:flutter/material.dart';

import '../../../app/app.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';
import 'new_account/new_account.dart';

class SigninSignup extends StatefulWidget {
  const SigninSignup({Key? key}) : super(key: key);

  @override
  State<SigninSignup> createState() => _SigninSignupState();
}

class _SigninSignupState extends State<SigninSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            const Image(
              image: AssetImage(
                'images/Artboard.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'شركة العرب الأولي للرعاية الصحية',
              style: FontManger.titleStyle(),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.buttonColor,
              ),
              width: 350,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SignInPage()),
                  );
                },
                child: Text(
                  'تسجيل الدخول',
                  style: FontManger.titleStyle(color: const Color(0xffFFFFFF)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              width: 350,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => NewAccount()),
                  );
                },
                child: Text(
                  'إنشاء حساب',
                  style: FontManger.titleStyle(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const MainPage()),
                );
              },
              child: Text('تخطي تسجيل الدخول', style: FontManger.bodyStyle()),
            ),
          ],
        ),
      ),
    );
  }
}

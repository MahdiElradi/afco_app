import 'package:app1/presentation/screens/signin_signup/signin_signup.dart';
import 'package:flutter/material.dart';

import '../../util/font_manager.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff134284),
        ),
        Positioned(
          left: 50,
          right: 50,
          top: 150,
          child: Image.asset(
            'images/Check.png',
          ),
        ),
        Positioned(
          top: 500,
          left: 30,
          right: 30,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const SigninSignup(),
                ),
              );
            },
            child: Text(
              'تهانينا لقد قمنا بإستعادة كلمة المرور بنجاح',
              style: FontManger.titleStyle(
                color: const Color(0xffFFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

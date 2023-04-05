import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class ResponsiveButton extends StatelessWidget {
  static TextStyle titleStyle({Color? color, Text? text}) {
    return TextStyle(
      fontSize: SizeManger.titleSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-Bold',
      color: color ?? ColorManager.buttonColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorManager.buttonColor,
        ),
        width: 380,
        height: 50,
        child: Center(
          child: Text(
            'تسجيل الدخول',
            style: FontManger.titleStyle(
              color: const Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}

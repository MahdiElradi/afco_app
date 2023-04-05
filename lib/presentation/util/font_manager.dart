import 'package:flutter/material.dart';

import 'color_manager.dart';

class FontManger {
  static TextStyle titleStyle({Color? color}) {
    return TextStyle(
      fontSize: SizeManger.titleSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-Bold',
      color: color ?? ColorManager.textColor,
    );
  }

  static TextStyle bodyStyle({Color? color}) {
    return TextStyle(
      fontSize: SizeManger.bodySize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-SemiBold',
      color: color ?? ColorManager.textColor,
    );
  }

  static TextStyle hintStyle({
    Color? color,
  }) {
    return TextStyle(
      fontSize: SizeManger.hintSize,
      // fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-Medium',
      color: color ?? ColorManager.textColor,
    );
  }

  static TextStyle titleStyle1({Color? color}) {
    return TextStyle(
      fontSize: SizeManger.titleSize1,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-SemiBold',
      color: color ?? ColorManager.textColor,
    );
  }

  static TextStyle bodyStyle1({Color? color}) {
    return TextStyle(
      fontSize: SizeManger.bodySize1,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-SemiBold',
      color: color ?? ColorManager.textColor,
    );
  }

  static TextStyle hintStyle1({Color? color}) {
    return TextStyle(
      fontSize: SizeManger.hintSize1,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo-SemiBold',
      color: color ?? ColorManager.textColor,
    );
  }

  static TextStyle hintStyle2({Color? color}) {
    return TextStyle(
      fontSize: SizeManger.hintSize2,
      fontFamily: 'Cairo-SemiBold',
      color: color ?? ColorManager.hintColor,
    );
  }
}

class SizeManger {
  static double titleSize = 18;
  static double bodySize = 16;
  static double hintSize = 12;
  static double hintSize2 = 12;
  static double titleSize1 = 26;
  static double bodySize1 = 23;
  static double hintSize1 = 20;
}

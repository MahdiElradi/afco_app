import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class AccountInfPage extends StatelessWidget {
  const AccountInfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'معلومات الحساب',
          style: FontManger.titleStyle(color: ColorManager.textColor),
        ),
      ),
    );
  }
}

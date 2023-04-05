import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';
import 'add_myson.dart';
import 'card_page.dart';

class AddMySonPage3 extends StatelessWidget {
  const AddMySonPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData.fallback(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          ' إضافة أحد أفراد الأسرة',
          style: FontManger.titleStyle(),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/addcard.png'),
            Text(
              ' تمت الإضافة بنجاح',
              style: FontManger.titleStyle(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p20,
                right: AppPadding.p20,
                top: AppPadding.p8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffD9D9FF),
                ),
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AddMySonPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' أضف أحد أفراد العائلة',
                        style: FontManger.bodyStyle(
                            color: ColorManager.buttonColor),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffFFFFFF),
                        ),
                        width: 30,
                        height: 30,
                        child: const Icon(
                          Icons.person_add_alt_1,
                          color: ColorManager.buttonColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: AppPadding.p20, right: AppPadding.p20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorManager.buttonColor,
                ),
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const CardPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: const Color(0xffFFFFFF),
                        ),
                        width: 30,
                        height: 30,
                        child: const Icon(
                          Icons.home,
                          color: ColorManager.buttonColor,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        ' العودة للشاشة الرئيسية',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textButtonColor),
                      ),
                    ],
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

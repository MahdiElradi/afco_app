import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';
import 'add_myson2/add_myson2.dart';
import 'card_page.dart';
import 'card_page/radio_wedgit.dart';

class AddMySonPage extends StatelessWidget {
  const AddMySonPage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' إضافة أحد أفراد الأسرة',
                  style: FontManger.bodyStyle(color: ColorManager.textColor)),
              const SizedBox(
                height: 10,
              ),
              Text('من فضلك قم بتعبئة البيانات أدناه ',
                  style: FontManger.bodyStyle(color: ColorManager.textColor)),
              Text(
                'الإسم',
                style: FontManger.bodyStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  style: FontManger.hintStyle(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'أدخل اسمك',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'الجنس',
                style: FontManger.bodyStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.blue,
                child: const RadioPage(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'رقم الموبايل',
                style: FontManger.bodyStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  obscureText: true,
                  style: FontManger.hintStyle(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: '05xxxxxxxx ',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                ' العنوان ',
                style: FontManger.bodyStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  obscureText: true,
                  style: FontManger.hintStyle(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'غرناطة ـ شارع النجاح ',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'المدينة',
                style: FontManger.bodyStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  obscureText: true,
                  style: FontManger.hintStyle(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'جدة ',
                      suffixIcon: Icon(Icons.arrow_drop_down_outlined)),
                ),
              ),
              const SizedBox(
                height: 110,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffD9D9FF),
                    ),
                    width: 180,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const CardPage(),
                          ),
                        );
                      },
                      child: Text(
                        ' إلغاء ',
                        style: FontManger.bodyStyle(
                          color: ColorManager.buttonColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorManager.buttonColor,
                    ),
                    width: 180,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const AddMySonPage2(),
                          ),
                        );
                      },
                      child: Text(
                        ' متابعة ',
                        style: FontManger.bodyStyle(
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

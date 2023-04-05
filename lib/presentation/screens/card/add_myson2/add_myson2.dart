import 'package:app1/presentation/screens/card/add_myson2/radio_myson.dart';
import 'package:flutter/material.dart';

import '../../../util/appsize_manager.dart';
import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';
import '../add_myson3.dart';

class AddMySonPage2 extends StatelessWidget {
  const AddMySonPage2({Key? key}) : super(key: key);

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
              Text(' إختر طريقة الدفع',
                  style: FontManger.titleStyle(color: ColorManager.textColor)),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blue,
                child: const RadioMySonPage(),
              ),
              Text('معلومات الدفع ',
                  style: FontManger.titleStyle(color: ColorManager.textColor)),
              Text(
                'الإسم في البطاقة',
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
                'رقم البطاقة',
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
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: '0000-0000-0000-0000 ',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '*CCV',
                        style: FontManger.bodyStyle(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        width: 185,
                        child: TextFormField(
                          obscureText: true,
                          style: FontManger.hintStyle(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: '*** ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '*EXPIRY',
                        style: FontManger.bodyStyle(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        width: 185,
                        child: TextFormField(
                          style: FontManger.hintStyle(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Mm/Yy ',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
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
                          builder: (_) => const AddMySonPage3(),
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
                            Icons.person_add_alt_1,
                            color: ColorManager.buttonColor,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'تأكيد الإضافة',
                          style: FontManger.titleStyle(
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
      ),
    );
  }
}

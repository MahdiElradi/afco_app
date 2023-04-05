import 'package:app1/presentation/screens/card/card_page/radio_wedgit.dart';
import 'package:flutter/material.dart';

import '../../../util/appsize_manager.dart';
import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';
import '../add_myson.dart';
import '../add_myson2/add_myson2.dart';
import '../card_page.dart';

enum SingingCharacter { lafayette, jefferson }

class RequestCardPage extends StatefulWidget {
  const RequestCardPage({Key? key}) : super(key: key);

  @override
  State<RequestCardPage> createState() => RequestCardPageState();
}

class RequestCardPageState extends State<RequestCardPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData.fallback(),
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(0), // Creates border
              color: Colors.grey[200],
            ),
            tabs: [
              Text(
                ' بطاقة أفراد',
                style: FontManger.bodyStyle(),
              ),
              Text(
                'بطاقة عائلية',
                style: FontManger.bodyStyle(),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'أطلبها الأن',
            style: FontManger.titleStyle(),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Text('بطاقة أفراد',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(child: Image.asset('images/caedd2.png')),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('من فضلك قم بتعبئة البيانات أدناه ',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)),
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
                      height: 30,
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
            Padding(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Text('بطاقة عائلية',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(child: Image.asset('images/cardd.png')),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('من فضلك قم بتعبئة البيانات أدناه ',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)),
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
                      height: 30,
                    ),
                    Text('إضافة أحد أفراد الأسرة ',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)), //add one pepole
                    const SizedBox(
                      height: 15,
                    ),
                    Text('من فضلك قم بتعبئة البيانات أدناه ',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)),
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
                      height: 30,
                    ),
                    Text(
                        'يمكنك التمتع بمزايا البطاقة العائلية بإضافة ثلاثة أفراد كحد أقصي 150 ريال ',
                        style: FontManger.bodyStyle(
                            color: ColorManager.textColor)),
                    const SizedBox(
                      height: 20,
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
                    const SizedBox(
                      height: 40,
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
          ],
        ),
      ),
    );
  }
}

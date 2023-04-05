import 'package:app1/presentation/screens/home/sections/beauty_center.dart';
import 'package:app1/presentation/screens/home/sections/medical_center.dart';
import 'package:app1/presentation/screens/home/sections/pharmacies.dart';
import 'package:app1/presentation/screens/home/specialties/pregnancy_birth.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';
import 'sections/hospital.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'الرياض';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
        title: Text(
          'مرحبا أحمد',
          style: FontManger.titleStyle(color: Colors.blue),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p20),
            child: CircleAvatar(
              backgroundColor: Colors.green[100],
              radius: 20,
              child: const Icon(
                Icons.qr_code_scanner_rounded,
                color: ColorManager.iconColor,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p20,
          right: AppPadding.p20,
          top: AppPadding.p8,
          bottom: AppPadding.p8,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Text(
                'أحصل على خدمات صحية متميزة',
                style: FontManger.titleStyle1(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 310,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'اسم المستشفي ، مركز صحي ، التخصص',
                      hintStyle: FontManger.hintStyle(),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        // color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[100],
                  ),
                  width: 50,
                  height: 50,
                  child: Image.asset('images/iconcolor.png'),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 0.3,
              color: ColorManager.textColor,
            ),
            Row(
              children: [
                Text(
                  'البحث في مدينة',
                  style: FontManger.titleStyle(),
                ),
                const SizedBox(
                  width: 10,
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  elevation: 0,
                  style: const TextStyle(color: ColorManager.iconColor2),
                  underline: Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'الرياض',
                    'الدمام',
                    'مكة',
                    'المدينة',
                    'الدمام',
                    'مكة',
                    'المدينة'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: FontManger.hintStyle(),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 175,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      'images/33.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  right: AppPadding.p20,
                  child: Container(
                    width: 180,
                    height: 50,
                    child: Text(
                      'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                      style: FontManger.hintStyle(
                          color: ColorManager.textButtonColor),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: AppPadding.p20,
                  child: Row(
                    children: [
                      Text(
                        'جديد',
                        style: FontManger.bodyStyle(
                            color: const Color(0xff53E391)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'أفكو',
                        style: FontManger.titleStyle(
                            color: ColorManager.textButtonColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' الأقسام ',
                  style: FontManger.titleStyle(),
                ),
                Text(
                  ' المزيد ',
                  style: FontManger.titleStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Hospital()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorManager.iconColor,
                      ),
                      height: 50,
                      width: 180,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/hospital.png',
                              color: ColorManager.textButtonColor),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'مستشفيات',
                            style: FontManger.bodyStyle(
                                color: ColorManager.textButtonColor),
                          ),
                        ],
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const MedicalCenters()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorManager.buttonColor),
                      height: 50,
                      width: 180,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/healthcare.png',
                              color: ColorManager.textButtonColor),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'مجمعات طبية',
                            style: FontManger.bodyStyle(
                                color: ColorManager.textButtonColor),
                          ),
                        ],
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const BeautyCenters()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorManager.iconColor2),
                      height: 50,
                      width: 180,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/ceauty.png',
                              color: ColorManager.textButtonColor),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'مراكز تجميل',
                            style: FontManger.bodyStyle(
                                color: ColorManager.textButtonColor),
                          ),
                        ],
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Pharmacies()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorManager.iconColor3,
                      ),
                      height: 50,
                      width: 180,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/pharmacy.png',
                              color: ColorManager.textButtonColor),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'صيدليات',
                            style: FontManger.bodyStyle(
                                color: ColorManager.textButtonColor),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              ' التخصصات ',
              style: FontManger.titleStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              // padding: const EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              crossAxisCount: 4,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const PregnancyAndBirth(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        color: ColorManager.textButtonColor,
                        child: Image.asset(
                          'images/takh/t11.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "الحمل والولادة ",
                        style: FontManger.hintStyle(),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t22.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "العلاج الطبيعي  ",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t22.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "التجميل ",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t44.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "الأسنان ",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t55.png',
                      ),
                    ),
                    Text(
                      "إبتسامة هول ",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t66.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "الحجامة ",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t77.png',
                      ),
                    ),
                    Text(
                      "الإبر الصينية",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t88.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "النظر",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t99.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "أمراض مزمنة ",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: ColorManager.textButtonColor,
                      child: Image.asset(
                        'images/takh/t10.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "تحليل فيروسات",
                      style: FontManger.hintStyle(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

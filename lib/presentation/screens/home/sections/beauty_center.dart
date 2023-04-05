import 'package:flutter/material.dart';

import '../../../util/appsize_manager.dart';
import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';

class BeautyCenters extends StatefulWidget {
  const BeautyCenters({Key? key}) : super(key: key);

  @override
  State<BeautyCenters> createState() => _BeautyCentersState();
}

class _BeautyCentersState extends State<BeautyCenters> {
  String dropdownValue = 'الرياض';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 250),
          child: Text(
            'الأقسام',
            style: FontManger.titleStyle(color: Colors.blue),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p8,
          right: AppPadding.p8,
          bottom: AppPadding.p8,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              'مراكز تجميل',
              style: FontManger.titleStyle1(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 325,
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
                        // size: 30,
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
            Row(
              children: [
                Text(
                  'البحث في مدينة',
                  style: FontManger.bodyStyle(),
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
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                    'المستشفيات',
                    style: FontManger.bodyStyle(
                      color: ColorManager.textColor,
                    ),
                  )),
                ),
                Container(
                  // color: ColorManager.buttonColor,
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                    'مجمعات طبية',
                    style: FontManger.bodyStyle(
                      color: ColorManager.textColor,
                    ),
                  )),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                    'مراكز تجميل',
                    style: FontManger.bodyStyle(
                      color: ColorManager.textColor,
                    ),
                  )),
                ),
                Container(
                  // color: ColorManager.iconColor3,
                  height: 40,
                  width: 85,
                  child: Center(
                      child: Text(
                    'صيدليات',
                    style: FontManger.bodyStyle(
                      color: ColorManager.textColor,
                    ),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cat1.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'المستشفي الرئيسي',
                              style: FontManger.titleStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  radius: 10,
                                  child: const Icon(
                                    Icons.location_on_outlined,
                                    color: ColorManager.iconColor,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'يبعد مسافة 54 كم',
                                  style: FontManger.hintStyle(
                                    color: ColorManager.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 180,
                              height: 50,
                              child: Text(
                                'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                style: FontManger.hintStyle(
                                    color: ColorManager.textColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cat2.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'المستشفي الأطفال',
                              style: FontManger.titleStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  radius: 10,
                                  child: const Icon(
                                    Icons.location_on_outlined,
                                    color: ColorManager.iconColor,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'يبعد مسافة 34 كم',
                                  style: FontManger.hintStyle(
                                    color: ColorManager.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 180,
                              height: 50,
                              child: Text(
                                'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                style: FontManger.hintStyle(
                                    color: ColorManager.textColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cat3.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'مستشفي ذوي الإحتياجات الخاصة ',
                              style: FontManger.titleStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  radius: 10,
                                  child: const Icon(
                                    Icons.location_on_outlined,
                                    color: ColorManager.iconColor,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'يبعد مسافة 17 كم',
                                  style: FontManger.hintStyle(
                                    color: ColorManager.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 180,
                              height: 50,
                              child: Text(
                                'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                style: FontManger.hintStyle(
                                    color: ColorManager.textColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/cat4.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'المستشفي التخصصي',
                              style: FontManger.titleStyle(
                                color: ColorManager.textColor,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  radius: 10,
                                  child: const Icon(
                                    Icons.location_on_outlined,
                                    color: ColorManager.iconColor,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'يبعد مسافة 54 كم',
                                  style: FontManger.hintStyle(
                                    color: ColorManager.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 180,
                              height: 50,
                              child: Text(
                                'لوريم ايبسوم دولار سيت أميت  أدايبا يسكينج أليايت,سيت دوات',
                                style: FontManger.hintStyle(
                                    color: ColorManager.textColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

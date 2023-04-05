import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/appsize_manager.dart';
import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class M extends StatefulWidget {
  const M({Key? key}) : super(key: key);

  @override
  State<M> createState() => _MState();
}

class _MState extends State<M> {
  String dropdownValue = 'الرياض';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
        body: Column(
          children: <Widget>[
            // construct the profile details widget here
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p20,
                right: AppPadding.p20,
                top: AppPadding.p8,
                bottom: AppPadding.p8,
              ),
              child: SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'المستشفيات',
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
                            style:
                                const TextStyle(color: ColorManager.iconColor2),
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
                    ],
                  )),
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: (' المستشفيات'),
                    ),
                    Tab(
                      text: ('مجمعات طبية'),
                    ),
                    Tab(
                      text: ('مراكز تجميل'),
                    ),
                    Tab(
                      text: (' صيدليات'),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        'Car',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

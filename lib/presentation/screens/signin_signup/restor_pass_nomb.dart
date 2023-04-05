import 'package:app1/presentation/screens/signin_signup/success.dart';
import 'package:flutter/material.dart';

import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class RestorePass extends StatelessWidget {
  const RestorePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          'إستعادة كلمة المرور',
          style: FontManger.titleStyle(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Text(
              'من فضلك قم بإدخال الديجيتال كود الذي قمنا بارسله',
              style: FontManger.bodyStyle(),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240),
            child: Text(
              'أدخل الديجيتال كود',
              style: FontManger.bodyStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '0',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '0',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '0',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '0',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorManager.buttonColor,
            ),
            width: 360,
            height: 50,
            child: Center(
                child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const Success()),
                );
              },
              child: Text(
                'تم',
                style: FontManger.bodyStyle(
                  color: const Color(0xffFFFFFF),
                ),
              ),
            )),
          ),
          const SizedBox(
            height: 25,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'إعادة الإرسال في خلال 30 ثانية',
              style: TextStyle(
                fontSize: 18,
                color: ColorManager.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../util/color_manager.dart';
import '../../util/font_manager.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();

  void onSubmit(String name) {}
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  // declare a variable to keep track of the input text
  String _name = '';

  void _submit() {
    // validate all the form fields
    if (_formKey.currentState!.validate()) {
      // on success, notify the parent widget
      widget.onSubmit(_name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
            Text(
              'تسجيل الدخول',
              style: FontManger.titleStyle(),
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'أهلاً بك في أفكو',
                style: FontManger.titleStyle(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'email123@gmail.com',
                  labelText: 'أدخل البريد الإلكتروني أو رقم الهاتف',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: '********',
                  labelText: 'كلمة المرور',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Can\'t be empty';
                  }
                  if (text.length < 4) {
                    return 'كلمة المرور التي قمت بإدخالها غير صحيحة';
                  }
                  return null;
                },
                onChanged: (text) => setState(() => _name = text),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'هل نسيت كلمة المرو ؟',
                  style: FontManger.bodyStyle(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.buttonColor,
              ),
              width: 350,
              height: 50,
              child: MaterialButton(
                onPressed: _name.isNotEmpty ? _submit : null,
                child: Text(
                  'تسجيل الدخول',
                  style: FontManger.titleStyle(
                    color: ColorManager.iconColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120, left: 120, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/22.png'),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/11.png'),
                    radius: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110, left: 90, top: 20),
              child: Row(
                children: [
                  Text(
                    'ليس لديك حساب ؟',
                    style: FontManger.bodyStyle(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'إنشاء حساب',
                      style: FontManger.bodyStyle(),
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

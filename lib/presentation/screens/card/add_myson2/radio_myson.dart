import 'package:flutter/material.dart';

import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';

enum SingingCharacter { lafayette, jefferson }

class RadioMySonPage extends StatefulWidget {
  const RadioMySonPage({Key? key}) : super(key: key);

  @override
  State<RadioMySonPage> createState() => _RadioMySonPageState();
}

class _RadioMySonPageState extends State<RadioMySonPage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Radio<SingingCharacter>(
                activeColor: ColorManager.buttonColor,
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              Row(
                children: [
                  Image.asset('images/cardb1.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('الدفع بإستخدام بطاقة باي بال',
                      style: FontManger.bodyStyle()),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Radio<SingingCharacter>(
                activeColor: ColorManager.buttonColor,
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              Row(
                children: [
                  Image.asset('images/321.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('الدفع بإستخدام بطاقة  بنكية',
                      style: FontManger.bodyStyle()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

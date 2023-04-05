import 'package:flutter/material.dart';

import '../../../util/color_manager.dart';
import '../../../util/font_manager.dart';

enum SingingCharacter { lafayette, jefferson }

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
              Text('ذكر', style: FontManger.bodyStyle()),
            ],
          ),
          const SizedBox(
            width: 30,
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
              Text('أنثي', style: FontManger.bodyStyle()),
            ],
          ),
        ],
      ),
    );
  }
}

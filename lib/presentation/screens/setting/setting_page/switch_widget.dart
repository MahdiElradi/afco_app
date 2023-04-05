import 'package:flutter/material.dart';

import '../../../util/color_manager.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Switch(
            activeTrackColor: ColorManager.buttonColor,
            activeColor: ColorManager.textButtonColor,
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

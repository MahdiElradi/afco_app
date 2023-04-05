import 'package:flutter/material.dart';

import '../../util/font_manager.dart';
import 'onboarding.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const Positioned(
              top: 100,
              left: 50,
              right: 50,
              child: Image(
                image: AssetImage(
                  'images/Artboard.png',
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 30,
              right: 30,
              child: Image.asset(
                'images/aa.png',
              ),
            ),
            Center(
              child: Center(
                child: Positioned(
                    top: 550,
                    left: 30,
                    right: 50,
                    child: Text(
                      'شركة العرب الأولي للرعاية الصحية المحدودة',
                      style: FontManger.titleStyle(),
                    )),
              ),
            ),
            Positioned(
              top: 708,
              child: Image.asset(
                'images/Group3.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

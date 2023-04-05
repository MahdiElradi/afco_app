import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../util/color_manager.dart';
import '../../util/font_manager.dart';
import '../signin_signup/signin.dart';
import '../signin_signup/signin_signup.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const SigninSignup()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 259,
          ),
          child: TextButton(
            child: Text(
              'تخطي',
              style: FontManger.titleStyle(),
            ),
            onPressed: () => _onIntroEnd(context),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "تطبيق أفكو",
          body: "شركة العرب الأولى للرعاية الصحية المحدودة",
          // image: _buildImage('images/11.png'),
          image: Image.asset('images/onb.png'),

          footer: Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.buttonColor,
              ),
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SigninSignup()),
                  );
                },
                child: Text(
                  'التالي',
                  style: FontManger.titleStyle(color: const Color(0xffFFFFFF)),
                ),
              ),
            ),
          ),
          decoration: PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: SizeManger.titleSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold',
              color: ColorManager.textColor,
            ),
            bodyTextStyle: TextStyle(
              fontSize: SizeManger.hintSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold',
              color: ColorManager.textColor,
            ),
          ),
        ),
        PageViewModel(
          title: "تطبيق أفكو",
          body: "شركة العرب الأولى للرعاية الصحية المحدودة",
          // image: _buildImage('images/11.png'),
          image: Image.asset('images/onb1.png'),
          //image: _buildImage('images/11.png'),
          footer: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.buttonColor,
              ),
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignInPage()),
                  );
                },
                child: Text(
                  'التالي',
                  style: FontManger.titleStyle(color: const Color(0xffFFFFFF)),
                ),
              ),
            ),
          ),
          decoration: PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: SizeManger.titleSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold',
              color: ColorManager.textColor,
            ),
            bodyTextStyle: TextStyle(
              fontSize: SizeManger.hintSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold',
              color: ColorManager.textColor,
            ),
          ),
        ),
        PageViewModel(
          title: " تطبيق أفكو",
          body: "شركة العرب الأولى للرعاية الصحية المحدودة",
          //image: _buildImage('images/onb.png'),
          image: Image.asset('images/onb2.png'),
          // decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.buttonColor,
              ),
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignInPage()),
                  );
                },
                child: Text(
                  'التالي',
                  style: FontManger.titleStyle(color: const Color(0xffFFFFFF)),
                ),
              ),
            ),
          ),
          decoration: PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: SizeManger.titleSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold',
              color: ColorManager.textColor,
            ),
            bodyTextStyle: TextStyle(
              fontSize: SizeManger.hintSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold',
              color: ColorManager.textColor,
            ),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      back: const SizedBox.shrink(),
      next: const SizedBox.shrink(),
      done: const SizedBox.shrink(),
      controlsMargin:
          const EdgeInsets.only(top: 90, right: 90, bottom: 20, left: 30),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(5.0)
          : const EdgeInsets.fromLTRB(6.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xff134284),
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

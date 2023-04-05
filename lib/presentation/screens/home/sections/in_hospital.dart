import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../util/color_manager.dart';

class InHospital extends StatefulWidget {
  const InHospital({Key? key}) : super(key: key);

  @override
  State<InHospital> createState() => _InHospitalState();
}

class _InHospitalState extends State<InHospital> {
  final controller = PageController(viewportFraction: 0.8);
  @override
  final pages = List.generate(
    4,
    (index) => SizedBox(
      child: Image.asset(
        'images/c1.png',
        fit: BoxFit.fitHeight,
        width: double.infinity,
      ),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        // alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
          ),
          Positioned(
            top: 280,
            right: 180,
            child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const ScrollingDotsEffect(
                  activeDotColor: ColorManager.pageIndicatorColor,
                  activeStrokeWidth: 2.6,
                  activeDotScale: 1.3,
                  maxVisibleDots: 5,
                  radius: 8,
                  spacing: 6,
                  dotHeight: 8,
                  dotWidth: 8,
                )),
          ),
          Positioned(
              top: 300,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}

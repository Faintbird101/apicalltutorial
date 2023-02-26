import 'package:apicalltutorial/pages/page_1.dart';
import 'package:apicalltutorial/pages/page_2.dart';
import 'package:apicalltutorial/pages/page_3.dart';
import 'package:apicalltutorial/pages/page_4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScrollSlider extends StatelessWidget {
  final _controller = Get.put(PageController());
  // final _mycontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: PageView(
              controller: _controller,
              children: [
                // Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: WormEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.grey.shade300,
              dotHeight: 15,
              dotWidth: 15,
            ),
          ),
        ],
      ),
    );
  }
}

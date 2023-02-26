import 'package:apicalltutorial/pages/page_1.dart';
import 'package:apicalltutorial/pages/welcome/scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideNext extends StatelessWidget {
  final _controller = Get.put(PageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          Page1(),
          ScrollSlider(),
        ],
      ),
    );
  }
}

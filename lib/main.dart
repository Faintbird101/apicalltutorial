import 'package:apicalltutorial/pages/navigation/start_up.dart';
import 'package:apicalltutorial/pages/page_1.dart';
import 'package:apicalltutorial/pages/slider.dart';
import 'package:apicalltutorial/pages/welcome/scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Api Call',
      theme: ThemeData(
        dividerTheme: DividerThemeData(color: Colors.black, thickness: 30),
        primarySwatch: Colors.lightGreen,
      ),
      home: HomePage(),
      // ScrollSlider(),
      // SlideNext(),
    );
  }
}

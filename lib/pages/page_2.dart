import 'package:apicalltutorial/pages/page_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('assets/website-maintenance.png'),
        Container(
          child: Text('We have the best clothes'),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black,
                    )),
                onPressed: () {
                  Get.to(() => const Page3());
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

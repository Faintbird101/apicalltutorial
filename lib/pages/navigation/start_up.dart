import 'package:apicalltutorial/home_page.dart';
import 'package:apicalltutorial/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LetIn extends StatelessWidget {
  const LetIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  height: 30,
                  child: IconButton(
                    alignment: Alignment.center,
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
                Container(
                    height: 300,
                    child: Image.asset(
                      'assets/sign-up-form.png',
                    )),
                // const SizedBox(
                //   height: 10.0,
                // ),
                const Text(
                  'Let\'s You In',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/google icon.png',
                          height: 20,
                          // fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Sign in with Google',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        )),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/twitter.png',
                          height: 20,
                          // fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Sign in with Twitter',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.5),
                        )),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/facebook-logo-2019.png',
                          height: 20,
                          // fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Sign in with Facebook',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        height: 2,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    const Text(
                      'or',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade400,
                        height: 2,
                        thickness: 1,
                        indent: 10,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
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
                      Get.to(() => const HomePage());
                    },
                    child: const Text('Sign in with Password'),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        text: 'Sign up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => const SignInPage());
                          },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Colors.grey,
        height: 2,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
    );
  }
}

import 'package:apicalltutorial/controllers/controllers.dart';
import 'package:apicalltutorial/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isEmailCorrect = false;
  var isObsecure = true.obs;

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  height: 30,
                  child: IconButton(
                    alignment: Alignment.center,
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.cottage_rounded,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Hello Again!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Welcome back! You\'ve been missed',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        //email
                        TextFormField(
                          validator: (val) => val == ""
                              ? "Please write the correct email"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              isEmailCorrect = isEmail(val);
                            });
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            ),
                            hintText: 'Email',
                            enabledBorder: const OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEmailCorrect == false
                                    ? Colors.red
                                    : Colors.grey.shade600,
                              ),
                            ),
                            suffixIcon: isEmailCorrect == false
                                ? null
                                : const Icon(
                                    Icons.done_rounded,
                                    color: Colors.green,
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),

                        //password
                        Obx(
                          () => TextFormField(
                            controller: passwordController,
                            obscureText: isObsecure.value,
                            style: const TextStyle(),
                            showCursor: true,
                            decoration: InputDecoration(
                              suffixIcon: Obx(
                                (() => GestureDetector(
                                      onTap: () {
                                        isObsecure.value = !isObsecure.value;
                                      },
                                      child: Icon(isObsecure.value
                                          ? Icons.visibility_off_rounded
                                          : Icons.visibility_rounded),
                                    )),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              ),
                              hintText: 'Password',
                              // enabledBorder: const OutlineInputBorder(
                              // borderSide: BorderSide(
                              // color: Colors.transparent,
                              // style: BorderStyle.none,
                              // ),
                              // ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                // Checkbox(value: value, onChanged: onChanged)

                //login
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already signed up?'),
                    RichText(
                      text: TextSpan(
                        text: 'Sign in',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => const SignInPage());
                          },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.blueGrey[200],
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/google icon.png',
                        height: 20,
                        // fit: BoxFit.fitHeight,
                      ),
                    ),
                    const SizedBox(width: 50.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.blueGrey[200],
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/twitter.png',
                        height: 20,
                        // fit: BoxFit.fitHeight,
                      ),
                    ),
                    const SizedBox(width: 50.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.blueGrey[200],
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/facebook-logo-2019.png',
                        height: 20,
                        // fit: BoxFit.fitHeight,
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
}

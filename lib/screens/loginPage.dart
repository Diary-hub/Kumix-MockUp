// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/inputField.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/helpers/scrollBehavior.dart';
import 'package:project_zanko/screens/homePage.dart';
import 'package:project_zanko/screens/signupPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: ScrollConfiguration(
          // New Scroll With No Glow
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/login/loginOne.png',
                      scale: 5.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: sH * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(right: sW * .10, left: sW * .0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProTextKurdish(
                              lines: 1,
                              sW: sW * 0.5,
                              text: "چوونە ژورەوە",
                              rang: Colors.white,
                              fontsize: 28,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProTextKurdish(
                              lines: 1,
                              sW: sW * 0.5,
                              text: "تکایە داخڵ ببە بۆ بەردەوامبوون",
                              fontsize: 14,
                              rang: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: sH * .01),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.mail_outline),
                    obscured: false,
                    label: "ئیمەیڵ"),
                SizedBox(height: sH * .02),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.lock_outline),
                    obscured: true,
                    label: "وشەی نهێنی"),
                SizedBox(height: sH * .02),
                SimpleButton(
                  sH: sH * 0.08,
                  sW: sW * 0.45,
                  fontWeight: FontWeight.bold,
                  radius: 100,
                  title: "چوونە ژورەوە",
                  titleFontSize: 22,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                SizedBox(height: sH * .01),
                GestureDetector(
                  onTap: () {},
                  child: ProTextKurdish(
                    lines: 1,
                    sW: sW * 0.37,
                    text: "وشەی تێپەڕت لەبیر کردووە؟",
                    rang: Theme.of(context).colorScheme.secondary,
                    fontsize: 15,
                  ),
                ),
                SizedBox(height: sH * .08),
                RichText(
                  text: TextSpan(
                    text: 'هەژمارت نیە؟',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Rabar',
                    ),
                    children: [
                      TextSpan(
                        text: ' دروست کردن',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage())),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'Rabar',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

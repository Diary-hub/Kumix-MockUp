// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/inputField.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/helpers/scrollBehavior.dart';
import 'package:project_zanko/screens/loginPage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                SizedBox(
                  height: sH * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.only(right: sW * .10, left: sW * 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 18),
                            child: ProTextKurdish(
                              text: "درووست کردنی هەژمار",
                              rang: Colors.white,
                              fontsize: 30,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10.0),
                            child: ProTextKurdish(
                              text: "تکایە ئەم فۆڕمە پڕ بکەرەوە",
                              rang: Colors.grey,
                              fontsize: 17,
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
                    icon: const Icon(Icons.person_2_outlined),
                    obscured: false,
                    label: "ناوی تەواو"),
                SizedBox(height: sH * .02),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.phone_iphone_outlined),
                    obscured: false,
                    label: "ژمارەی مۆبایل"),
                SizedBox(height: sH * .02),
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
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.lock_outline),
                    obscured: true,
                    label: "دڵنیای لە وشەی نهێنی"),
                SizedBox(height: sH * .09),
                SimpleButton(
                  sH: sH * 0.08,
                  sW: sW * 0.58,
                  fontWeight: FontWeight.bold,
                  radius: 100,
                  title: "درووست کردن",
                  titleFontSize: 22,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                ),
                SizedBox(height: sH * .01),
                RichText(
                  text: TextSpan(
                    text: 'هەژمارت هەیە؟',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Rabar'),
                    children: [
                      TextSpan(
                        text: ' چوونە ژورەوە',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage())),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Rabar'),
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

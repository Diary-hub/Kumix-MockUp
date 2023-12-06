// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/inputField.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
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
                  padding: EdgeInsets.only(right: sW * 0, left: sW * .10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Create Account",
                              textScaler: TextScaler.linear(
                                ScaleSize.textScaleFactor(context),
                              ),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontFamily: 'Oxygen',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 8.0),
                            child: Text(
                              "Please fill the feilds below",
                              textScaler: TextScaler.linear(
                                  ScaleSize.textScaleFactor(context)),
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Oxygen',
                              ),
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
                    label: "FULL NAME"),
                SizedBox(height: sH * .02),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.phone_iphone_outlined),
                    obscured: false,
                    label: "PHONE"),
                SizedBox(height: sH * .02),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.mail_outline),
                    obscured: false,
                    label: "EMAIL"),
                SizedBox(height: sH * .02),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.lock_outline),
                    obscured: true,
                    label: "PASSWORD"),
                SizedBox(height: sH * .02),
                Inputfield(
                    sW: sW,
                    sH: sH,
                    icon: const Icon(Icons.lock_outline),
                    obscured: true,
                    label: "CONFIRM PASSWORD"),
                SizedBox(height: sH * .09),
                SimpleButton(
                  sH: sH * 0.08,
                  sW: sW * 0.58,
                  fontWeight: FontWeight.bold,
                  radius: 100,
                  title: "SIGN UP",
                  titleFontSize: 22,
                  onPressed: () {},
                ),
                SizedBox(height: sH * .01),
                RichText(
                  text: TextSpan(
                    text: 'Already have account?',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.white),
                    children: [
                      TextSpan(
                        text: ' Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage())),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
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

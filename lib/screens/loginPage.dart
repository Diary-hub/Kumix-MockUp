// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/inputField.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
import 'package:project_zanko/helpers/scrollBehavior.dart';
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
                  padding: EdgeInsets.only(right: sW * 0, left: sW * .10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Login",
                              textScaler: TextScaler.linear(
                                  ScaleSize.textScaleFactor(context)),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontFamily: 'Oxygen',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Please login to continue",
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
                SimpleButton(
                  sH: sH * 0.08,
                  sW: sW * 0.45,
                  fontWeight: FontWeight.bold,
                  radius: 100,
                  title: "LOGIN",
                  titleFontSize: 22,
                  onPressed: () {},
                ),
                SizedBox(height: sH * .01),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
                SizedBox(height: sH * .08),
                RichText(
                  text: TextSpan(
                    text: 'Dont have account?',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage())),
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

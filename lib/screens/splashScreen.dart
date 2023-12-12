// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:project_zanko/screens/loginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.gif(
        gifPath: 'assets/images/login/giphy.gif',
        gifWidth: 269,
        gifHeight: 474,
        nextScreen: const LoginPage(),
        duration: const Duration(milliseconds: 3515),
        onInit: () async {
          debugPrint("onInit");
        },
        onEnd: () async {
          debugPrint("onEnd 1");
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_zanko/screens/actionComics.dart';
import 'package:project_zanko/screens/comicsPage.dart';
import 'package:project_zanko/screens/detailsPage.dart';
import 'package:project_zanko/screens/homePage.dart';
// ignore: unused_import
import 'package:project_zanko/screens/loginPage.dart';
import 'package:project_zanko/screens/signupPage.dart';
import 'package:project_zanko/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return MaterialApp(
      title: "Kumics",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: Color(0xff0df5e3),
          onSecondary: Color(0xff0df5e3),
          error: Color(0xffbe3535),
          onError: Color(0xffd4b430),
          background: Color(0xff17181c),
          onBackground: Color.fromARGB(255, 30, 23, 48),
          surface: Color(0xff1e2027),
          onSurface: Color(0xff848486),
        ),
      ),
      home: ActionsPage(),
    );
  }
}

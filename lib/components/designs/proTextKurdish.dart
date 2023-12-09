import 'package:flutter/material.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

// ignore: must_be_immutable
class ProTextKurdish extends StatelessWidget {
  ProTextKurdish(
      {super.key,
      required this.fontsize,
      required this.rang,
      required this.text});

  String text;
  double fontsize;
  Color rang;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
      style: TextStyle(fontFamily: 'Rabar', fontSize: fontsize, color: rang),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

// ignore: must_be_immutable
class ProTextKurdish extends StatelessWidget {
  ProTextKurdish({
    super.key,
    required this.fontsize,
    required this.rang,
    required this.text,
    required this.sW,
    required this.lines,
  });

  String text;
  double fontsize;
  Color rang;
  double sW;
  int lines;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        // width: sW,
        child: RichText(
          maxLines: lines,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
              text: text,
              style: TextStyle(
                  fontFamily: 'Rabar', fontSize: fontsize, color: rang)),
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        ),
      ),
    );
  }
}

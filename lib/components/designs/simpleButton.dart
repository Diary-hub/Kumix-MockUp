// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.sH,
    required this.sW,
    required this.radius,
    required this.title,
    required this.fontWeight,
    required this.titleFontSize,
    required this.onPressed,
    this.color = const Color(0xff0df5e3),
  });

  final double sH;
  final double sW;
  final double radius;
  final String title;
  final double titleFontSize;
  final FontWeight fontWeight;
  final Function() onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sH,
      width: sW,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
          style: TextStyle(
              color: Colors.black,
              fontSize: titleFontSize,
              fontFamily: "Rabar",
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}

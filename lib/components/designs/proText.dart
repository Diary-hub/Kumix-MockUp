import 'package:flutter/material.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

class ProText extends StatelessWidget {
  const ProText(
      {super.key,
      required this.textStyle,
      required this.text,
      required this.lines});

  final TextStyle textStyle;
  final String text;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        maxLines: lines,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(text: text, style: textStyle),
      ),
    );
  }
}

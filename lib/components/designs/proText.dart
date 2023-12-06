import 'package:flutter/material.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

class ProText extends StatelessWidget {
  const ProText({
    super.key,
    required this.textStyle,
    required this.text,
  });

  final TextStyle textStyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        overflow: TextOverflow.ellipsis,
        text: TextSpan(text: text, style: textStyle),
      ),
    );
  }
}

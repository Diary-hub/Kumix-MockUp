// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';

class ExtraDetail extends StatelessWidget {
  const ExtraDetail({
    super.key,
    required this.sH,
    required this.sW,
    required this.bigTitle,
    required this.smallTitle,
  });

  final double sH;
  final double sW;
  final String bigTitle;
  final String smallTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: sH * 0.02),
        ProTextKurdish(
          lines: 1,
          sW: sW * 0.5,
          text: bigTitle,
          rang: Colors.grey,
          fontsize: 14,
        ),
        ProTextKurdish(
          lines: 1,
          sW: sW * 0.5,
          text: smallTitle,
          rang: Colors.white,
          fontsize: 18,
        ),
      ],
    );
  }
}

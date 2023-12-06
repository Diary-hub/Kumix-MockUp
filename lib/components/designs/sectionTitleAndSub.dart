// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

class SectionTitleAndSub extends StatelessWidget {
  const SectionTitleAndSub({
    super.key,
    required this.sH,
    required this.sW,
    required this.title,
    required this.subtitle,
  });

  final double sH;
  final double sW;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
                style: const TextStyle(
                    fontFamily: 'Oxygen', color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: sH * 0.01,
              ),
              Row(
                children: [
                  Text(
                    subtitle,
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    style: const TextStyle(
                        fontFamily: 'Oxygen',
                        color: Colors.white54,
                        fontSize: 13),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: sW * 0.44,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Show More',
                            style: TextStyle(color: Colors.white54),
                          ),
                          SizedBox(
                            width: sW * 0.03,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

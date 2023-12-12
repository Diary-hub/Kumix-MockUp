// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';

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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ProTextKurdish(
                lines: 1,
                sW: sW * 0.3,
                fontsize: 18,
                rang: Colors.white,
                text: title,
              ),
              SizedBox(
                height: sH * 0.01,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: sW * 0.020,
                  ),
                  ProTextKurdish(
                      lines: 1,
                      sW: sW * 0.085,
                      fontsize: 16,
                      rang: Colors.white54,
                      text: "زیاتر ببینە"),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: sW * 0.400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ProTextKurdish(
                              lines: 1,
                              sW: sW * 0.3,
                              fontsize: 15,
                              rang: Colors.white54,
                              text: subtitle),
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

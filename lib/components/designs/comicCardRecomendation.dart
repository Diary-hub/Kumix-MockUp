// ignore_for_file: file_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/datas/comics.dart';

class ComicCardRecomendation extends StatelessWidget {
  const ComicCardRecomendation({
    super.key,
    required this.sW,
    required this.sH,
    required this.ccomic,
  });

  final double sW;
  final double sH;
  final Comic ccomic;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sW * 0.9,
      margin: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Blurred Image
            Image.network(
              ccomic.imgPoster,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // BackdropFilter for blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
                width: double.infinity,
                height: double.infinity,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: sW * 0.35,
                height: sH * 0.27,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      image: NetworkImage(ccomic.imgPoster), fit: BoxFit.fill),
                ),
              ),
            ),
            // Content
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProTextKurdish(
                            fontsize: 16,
                            rang: Colors.white,
                            text: ccomic.title,
                            sW: sW,
                            lines: 1),
                        SizedBox(
                          width: sW * 0.4,
                          child: ProTextKurdish(
                              fontsize: 12,
                              rang: Colors.white54,
                              text: ccomic.categories
                                  .toSet()
                                  .toString()
                                  .substring(
                                      1,
                                      ccomic.categories
                                              .toSet()
                                              .toString()
                                              .length -
                                          1),
                              sW: sW,
                              lines: 1),
                        ),
                        SizedBox(height: sH * 0.025),
                        ProTextKurdish(
                            fontsize: 15,
                            rang: Colors.white,
                            text: 'کورتە',
                            sW: sW,
                            lines: 1),
                        SizedBox(
                          height: sH * 0.01,
                        ),
                        SizedBox(
                          width: sW * 0.4,
                          height: sH * 0.1,
                          child: ProTextKurdish(
                              fontsize: 12,
                              rang: Colors.white54,
                              text: ccomic.description,
                              sW: sW,
                              lines: 5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: sW * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_zanko/datas/comics.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: sW * 0.4,
                        child: Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                textScaler: TextScaler.linear(
                                    ScaleSize.textScaleFactor(context)),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  text: ccomic.title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Raabar',
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: RichText(
                          textScaler: TextScaler.linear(
                              ScaleSize.textScaleFactor(context)),
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: ccomic.categories,
                            style: const TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'Rabar',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: sH * 0.025),
                      Text(
                        'کورتە',
                        textScaler: TextScaler.linear(
                            ScaleSize.textScaleFactor(context)),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Rabar',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: sH * 0.01,
                      ),
                      SizedBox(
                        width: sW * 0.4,
                        height: sH * 0.1,
                        child: Flexible(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              textDirection: TextDirection.rtl,
                              textScaler: TextScaler.linear(
                                  ScaleSize.textScaleFactor(context)),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                text: ccomic.description,
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 12,
                                  fontFamily: 'Rabar',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: sW * 0.05),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

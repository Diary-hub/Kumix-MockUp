// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proText.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/datas/database.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    final double sW = MediaQuery.of(context).size.width;
    final double sH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Stack(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ProTextKurdish(
                        text: coms[index].title,
                        rang: Colors.white,
                        fontsize: 26,
                      ),
                      ProTextKurdish(
                        text: "لە لایەن: پاپای قەشەکان",
                        rang: Colors.grey,
                        fontsize: 14,
                      ),
                      SizedBox(height: sH * 0.02),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text("9.2"),
                            SizedBox(width: sW * 0.01),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: sH * 0.07),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white54,
                                  )),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.share,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white54,
                                  )),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.favorite_outline,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                          SimpleButton(
                              sH: sH * 0.05,
                              sW: sW * 0.2,
                              radius: 100,
                              title: '3.99\$',
                              fontWeight: FontWeight.bold,
                              titleFontSize: 16,
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: sW * 0.35,
                        height: sH * 0.27,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(17),
                          image: DecorationImage(
                              image: NetworkImage(coms[index].imgPoster),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: sH * 0.02),
            Stack(children: [
              SizedBox(height: sH * 0.24),
              Container(
                width: sW * 0.9,
                height: sH * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProTextKurdish(
                          fontsize: 22,
                          rang: Colors.white,
                          text: 'زانیاری',
                        ),
                        SizedBox(height: sH * 0.02),
                        const ProText(
                            lines: 3,
                            textStyle: TextStyle(fontFamily: 'Rabar'),
                            text:
                                'من و تۆ ئێمە دەچینە کوشتنی تۆ و من و تۆ لە کۆتاییدا تەنها من و تۆ من و تۆ ئێمە دەچین بۆ کوشتنی تۆ و من و تۆ لە کۆتاییدا تەنها من و تۆمن و تۆ ئێمە دەچین بۆ کوشتنی تۆ و من و تۆ لە کۆتایی تەنها من و تۆمن و تۆ ئێمە دەچینە کوشتنی تۆ و من و تۆ لە کۆتاییدا تەنها من و تۆ من و تۆ ئێمە دەچین بۆ کوشتنی تۆ و من و تۆ لە کۆتاییدا تەنها من و تۆ'),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: sW * 0.40,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blueAccent,
                    size: 50,
                  ),
                ),
              ),
              SizedBox(height: sH * 0.02),
            ])
          ],
        ),
        Positioned(
          bottom: 0.1,
          child: SimpleButton(
              sH: sH * 0.1,
              sW: sW * 0.9,
              radius: 100,
              title: 's',
              fontWeight: FontWeight.bold,
              titleFontSize: 12,
              onPressed: () {}),
        ),
      ]),
    );
  }
}

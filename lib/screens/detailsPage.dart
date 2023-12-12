// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/extraDetail.dart';
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
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.amber,
        centerTitle: true,
        title: ProTextKurdish(
            fontsize: 25,
            lines: 1,
            rang: Colors.amber,
            sW: sW,
            text: coms[index].titleEN),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ProTextKurdish(
                            lines: 1,
                            sW: sW * 0.5,
                            text: coms[index].title,
                            rang: Colors.white,
                            fontsize: 22,
                          ),
                          ProTextKurdish(
                            lines: 1,
                            sW: sW * 0.5,
                            text: "لە لایەن: ${coms[index].company}",
                            rang: Colors.grey,
                            fontsize: 14,
                          ),
                          SizedBox(height: sH * 0.02),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("${coms[index].rating}"),
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
                            mainAxisAlignment: MainAxisAlignment.end,
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
                              SimpleButton(
                                  color: Colors.amber,
                                  sH: sH * 0.05,
                                  sW: sW * 0.2,
                                  radius: 100,
                                  title: '${coms[index].price}\$',
                                  fontWeight: FontWeight.bold,
                                  titleFontSize: 16,
                                  onPressed: () {}),
                            ],
                          )
                        ],
                      ),
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
                            lines: 1,
                            sW: sW,
                            fontsize: 22,
                            rang: Colors.white,
                            text: 'کورتە',
                          ),
                          SizedBox(height: sH * 0.02),
                          ProText(
                            lines: 3,
                            textStyle: const TextStyle(fontFamily: 'Rabar'),
                            text: coms[index].description,
                          )
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
              ]),
              SizedBox(height: sH * 0.02),
              Container(
                width: sW * 0.9,
                height: sH * 0.8,
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
                          lines: 1,
                          sW: sW,
                          fontsize: 22,
                          rang: Colors.white,
                          text: 'ژانەر',
                        ),
                        SizedBox(height: sH * 0.02),
                        SizedBox(
                          height: sH * 0.15,
                          width: sW,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 50,
                                    childAspectRatio: 1,
                                    crossAxisCount: 3),
                            itemCount: coms[index].categories.length,
                            itemBuilder: (context, element) {
                              return Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border:
                                          Border.all(color: Colors.white54)),
                                  child: Center(
                                    child: ProTextKurdish(
                                        fontsize: 14,
                                        rang: Colors.white,
                                        text: coms[index]
                                            .categories
                                            .elementAt(element),
                                        sW: (sW + sH) * 0.05,
                                        lines: 1),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: sH * 0.02),
                        ProTextKurdish(
                          lines: 1,
                          sW: sW,
                          fontsize: 28,
                          rang: Colors.white,
                          text: 'زانیاری زیاتر',
                        ),
                        ExtraDetail(
                          bigTitle: "ناوی کۆمیک",
                          smallTitle: coms[index].title,
                          sH: sH,
                          sW: sW,
                        ),
                        ExtraDetail(
                          bigTitle: "ناوی کۆمیک بە ئینگلیزی",
                          smallTitle: coms[index].titleEN,
                          sH: sH,
                          sW: sW,
                        ),
                        ExtraDetail(
                          bigTitle: "ساڵی دەرچوون",
                          smallTitle: coms[index].date,
                          sH: sH,
                          sW: sW,
                        ),
                        ExtraDetail(
                          bigTitle: "نووسەر",
                          smallTitle: coms[index].author,
                          sH: sH,
                          sW: sW,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0.1,
          left: sW * .025,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: SimpleButton(
                color: Colors.amber,
                sH: sH * 0.08,
                sW: sW * .90,
                radius: 10,
                title: 'زیادکردن بۆ دڵخوازەکان',
                fontWeight: FontWeight.bold,
                titleFontSize: 30,
                onPressed: () {}),
          ),
        ),
      ]),
    );
  }
}

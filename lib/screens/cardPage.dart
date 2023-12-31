// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/datas/database.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sW = MediaQuery.of(context).size.width;
    final double sH = MediaQuery.of(context).size.height;
    final ColorScheme theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/login/img.jpg'),
                ),
              ),
              Column(
                children: [
                  ProTextKurdish(
                      lines: 1,
                      sW: sW * 0.14,
                      fontsize: 15,
                      rang: Colors.white54,
                      text: "بەخێربێیت"),
                  Text(
                    "Muhammad",
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    style: const TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: sW * 0.50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_sharp),
                      iconSize: 32,
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined),
                      iconSize: 32,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 25),
                            child: ProTextKurdish(
                                fontsize: 25,
                                rang: Colors.white,
                                text: 'دڵخوازەکـانت',
                                sW: sW * .25,
                                lines: 1),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: SizedBox(
                        width: sW * 0.9,
                        height: sH * 0.6,
                        child: ListView.builder(
                          itemCount: coms.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: sH * 0.20,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: theme.surface,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      width: sW * 0.4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          coms[index].imgPoster,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: sW * 0.4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          ProTextKurdish(
                                              fontsize: 20,
                                              rang: Colors.white,
                                              text: coms[index].title,
                                              sW: sW * .4,
                                              lines: 1),
                                          ProTextKurdish(
                                              fontsize: 16,
                                              rang: Colors.white54,
                                              text: coms[index].titleEN,
                                              sW: sW * .4,
                                              lines: 1),
                                          SizedBox(
                                            height: sH * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              ProTextKurdish(
                                                  fontsize: 18,
                                                  rang: Colors.yellow,
                                                  text:
                                                      "\$ ${coms[index].price}",
                                                  sW: sW * 0.1,
                                                  lines: 1),
                                              ProTextKurdish(
                                                  fontsize: 18,
                                                  rang: Colors.white,
                                                  text: "نرخ:   ",
                                                  sW: sW * 0.1,
                                                  lines: 1),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: sH * 0.15),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: sW,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: sH * 0.02),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 2.0, 40.0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProTextKurdish(
                                fontsize: 20,
                                rang: Colors.amber,
                                text: "\$ 2232",
                                sW: sW,
                                lines: 1),
                            ProTextKurdish(
                                fontsize: 20,
                                rang: Colors.amber,
                                text: "کۆی نرخ",
                                sW: sW,
                                lines: 1),
                          ],
                        ),
                      ),
                      SimpleButton(
                          color: Colors.amber,
                          sH: sH * 0.065,
                          sW: sW * 0.95,
                          radius: 100,
                          title: "پارەدان",
                          fontWeight: FontWeight.normal,
                          titleFontSize: 25,
                          onPressed: () {})
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_zanko/components/designs/comicCardRecomendation.dart';
import 'package:project_zanko/components/designs/proText.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/components/designs/sectionTitleAndSub.dart';
import 'package:project_zanko/datas/database.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
import 'package:project_zanko/screens/card.dart';
import 'package:project_zanko/screens/comicsPage.dart';
import 'package:project_zanko/screens/detailsPage.dart';
import 'package:project_zanko/screens/profilePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sW = MediaQuery.of(context).size.width;
    final double sH = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(children: [
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
                      fontFamily: 'Oxygen', fontSize: 15, color: Colors.white),
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
        SizedBox(height: sH * 0.01),
        SectionTitleAndSub(
          sH: sH,
          sW: sW * 1.7,
          title: 'نوێترینەکان',
          subtitle: 'نوێترین کۆمیکە پێشنیارکراوەکان',
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
              height: sH * 0.34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coms.length, // Number of items in the list
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(index: index)));
                    },
                    child: ComicCardRecomendation(
                      sW: sW,
                      sH: sH,
                      ccomic: coms[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SectionTitleAndSub(
          sH: sH,
          sW: sW * 1.7,
          title: 'بەناوبانگترین کۆمیکەکان',
          subtitle: 'کاتی چێز وەرگرتنە',
        ),
        SizedBox(
          width: sW * 0.1,
          height: sH * 0.56,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(right: 0, left: 5),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisExtent: sW * 0.35,
                  mainAxisSpacing: 0.0, // spacing between rows
                  crossAxisSpacing: 00.0, // spacing between columns
                ),
                padding: EdgeInsets.only(
                    left: 0,
                    top: sH * 0.01,
                    right: sW * 0.05), // padding around the grid
                itemCount: coms.length, // total number of items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(index: index)));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                coms[index].imgPoster,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: sH * 0.17,
                          width: sW * 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ProText(
                              lines: 1,
                              text: coms[index].title,
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Rabar',
                                  fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: ProTextKurdish(
                              fontsize: 12,
                              rang: Colors.white54,
                              text: coms[index]
                                  .categories
                                  .toSet()
                                  .toString()
                                  .substring(
                                      1,
                                      coms[index]
                                              .categories
                                              .toSet()
                                              .toString()
                                              .length -
                                          1),
                              sW: sW * .3,
                              lines: 1),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: sH * 0.015,
        ),
        Container(
          width: double.infinity,
          height: sH * .38,
          decoration: const BoxDecoration(color: Colors.white10),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                SectionTitleAndSub(
                    sH: sH,
                    sW: sW * 1.72,
                    title: 'کۆمیکی حەفتانە',
                    subtitle: 'کۆمیکی ئەم حەفتەیە لە دەست مەدە'),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                      width: double.infinity,
                      height: sH * .28,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // number of items in each row
                          mainAxisExtent: sW * 0.35,
                          mainAxisSpacing: 0.0, // spacing between rows
                          crossAxisSpacing: 00.0, // spacing between columns
                        ),
                        padding: EdgeInsets.only(
                            left: 0,
                            top: 14,
                            right: sW * 0.05), // padding around the grid
                        itemCount: coms.length, // total number of items
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(index: index)));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        coms[index].imgPoster,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: sH * 0.17,
                                  width: sW * 0.3,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, right: 8),
                                  child: ProText(
                                      lines: 1,
                                      text: coms[index].title,
                                      textStyle: const TextStyle(
                                          color: Colors.amber,
                                          fontFamily: 'Rabar',
                                          fontSize: 12)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, right: 8),
                                  child: ProTextKurdish(
                                      fontsize: 12,
                                      rang: Colors.white54,
                                      text: coms[index]
                                          .categories
                                          .toSet()
                                          .toString()
                                          .substring(
                                              1,
                                              coms[index]
                                                      .categories
                                                      .toSet()
                                                      .toString()
                                                      .length -
                                                  1),
                                      sW: sW * .3,
                                      lines: 1),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                )
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: GNav(
            activeColor: Colors.amber,
            onTabChange: (index) {
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ComicPage()));
              } //Comics
              else if (index == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CardPage()));
              } //Fav
              else if (index == 3) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              }
              //Acc
            },
            textStyle: const TextStyle(fontFamily: "Rabar"),
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: '    سەرەکی',
              ),
              GButton(
                icon: Icons.library_books_outlined,
                text: '  کۆمیکس',
              ),
              GButton(
                icon: Icons.favorite_outline,
                text: '    دڵخوازەکان',
              ),
              GButton(
                icon: Icons.person_3_outlined,
                text: '    هەژمار',
              ),
            ]),
      ),
    );
  }
}

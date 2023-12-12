import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/components/designs/simpleButton.dart';
import 'package:project_zanko/datas/database.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
import 'package:project_zanko/screens/comicsPage.dart';
import 'package:project_zanko/screens/profile.dart';

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
                                fontsize: 20,
                                rang: Colors.white,
                                text: 'دڵخوازەکـانت',
                                sW: sW * .25,
                                lines: 1),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: sW * 0.9,
                        height: sH * 0.7,
                        child: ListView.builder(
                            itemCount: coms.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: sH * 0.20,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: theme.surface,
                                              borderRadius:
                                                  const BorderRadius.all(
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
                                        Container(
                                          width: sW * 0.4,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ProTextKurdish(
                                                  fontsize: 14,
                                                  rang: Colors.white,
                                                  text: coms[index].title,
                                                  sW: sW * .4,
                                                  lines: 1),
                                              SizedBox(
                                                height: sH * 0.03,
                                              ),
                                              ProTextKurdish(
                                                  fontsize: 13,
                                                  rang: Colors.yellow,
                                                  text: coms[index]
                                                      .price
                                                      .toString(),
                                                  sW: sW * 0.1,
                                                  lines: 1),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
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
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          elevation: 30,
          splashColor: Colors.white,
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Icon(
            Icons.add_shopping_cart_sharp,
            color: Colors.black,
          )),
    );
  }
}

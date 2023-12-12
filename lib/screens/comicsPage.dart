// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_zanko/components/designs/categoryContainerCard.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
import 'package:project_zanko/screens/actionComics.dart';
import 'package:project_zanko/screens/cardPage.dart';
import 'package:project_zanko/screens/profilePage.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({super.key});

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
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ProTextKurdish(
                  lines: 1,
                  sW: sW * 0.5,
                  fontsize: 25,
                  rang: Colors.white,
                  text: 'ژانەری دڵخوازت هەڵبژێرە')
            ],
          ),
        ),
        CategoryContainerCard(
            arwalla: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ActionsPage()));
            },
            sW: sW,
            sH: sH,
            topic: 'ئەکشن',
            rasm:
                'https://qph.cf2.quoracdn.net/main-qimg-94b8bf6cd9b3d6bd1025a1cf8cbbd392'),
        CategoryContainerCard(
            arwalla: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ActionsPage()));
            },
            sW: sW,
            sH: sH,
            topic: 'کۆمیدی',
            rasm:
                'https://qph.cf2.quoracdn.net/main-qimg-9f7819b0ecae14938d5f0459e5e1b852'),
        CategoryContainerCard(
            arwalla: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ActionsPage()));
            },
            sW: sW,
            sH: sH,
            topic: 'ڕۆمانس',
            rasm:
                'https://media.tenor.com/5StcGSZp1JIAAAAC/spiderman-spider-man.gif'),
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
              )
            ]),
      ),
    );
  }
}

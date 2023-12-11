import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_zanko/components/designs/categoryContainerCard.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/helpers/fontScalor.dart';

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
                    fontsize: 15, rang: Colors.white54, text: "بەخێربێیت"),
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
                  fontsize: 20,
                  rang: Colors.white,
                  text: 'ژانەری دڵخوازت هەڵبژێرە')
            ],
          ),
        ),
        CategoryContainerCard(
            sW: sW,
            sH: sH,
            topic: 'ئەکشن',
            rasm:
                'https://i.pinimg.com/originals/95/b3/cb/95b3cb5797430aa139fd69782179344e.gif'),
        CategoryContainerCard(
            sW: sW,
            sH: sH,
            topic: 'کۆمیدی',
            rasm:
                'https://64.media.tumblr.com/0fc33e24c40e1e43cb1964f2b37cb916/tumblr_mrahsn1iCV1sstysro1_500.gif'),
        CategoryContainerCard(
            sW: sW,
            sH: sH,
            topic: 'ڕۆمانس',
            rasm:
                'https://31.media.tumblr.com/781150ac1ce6f67f0e19f2fd1698d31d/tumblr_mo717vKaO71s7f354o1_500.gif'),
      ]),
      bottomNavigationBar: const Directionality(
        textDirection: TextDirection.rtl,
        child: GNav(textStyle: TextStyle(fontFamily: "Rabar"), tabs: [
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

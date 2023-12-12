// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_zanko/components/designs/extraDetail.dart';
import 'package:project_zanko/components/designs/proText.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/screens/comicsPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sW = MediaQuery.of(context).size.width;
    final double sH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        surfaceTintColor: Theme.of(context).colorScheme.background,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: (sW + sH) * 0.072,
              backgroundColor: Colors.amber,
              child: CircleAvatar(
                radius: (sW + sH) * 0.07,
                backgroundColor: Colors.amber,
                backgroundImage:
                    const AssetImage('assets/images/login/img.jpg'),
              ),
            ),
            SizedBox(height: sH * 0.02),
            const ProText(
                textStyle: TextStyle(
                    fontFamily: 'Rabar', fontSize: 30, color: Colors.white),
                text: "Diary",
                lines: 1),
            ProText(
                textStyle: TextStyle(
                    fontFamily: 'Rabar', fontSize: 15, color: Colors.grey[600]),
                text: "diary.313205014@uhd.edu.iq",
                lines: 1),
            SizedBox(height: sH * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        ProTextKurdish(
                            fontsize: 26,
                            rang: Colors.white,
                            text: "150 ",
                            sW: sW * 0.11,
                            lines: 1),
                        ProTextKurdish(
                            fontsize: 20,
                            rang: Colors.white,
                            text: "بینراوەکان",
                            sW: sW * 0.18,
                            lines: 1),
                      ],
                    ),
                    SizedBox(width: sW * 0.02),
                    const SizedBox(
                      height: 100,
                      child: VerticalDivider(
                        color: Colors.amber,
                        endIndent: 20,
                        indent: 20,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(width: sW * 0.02),
                    Column(
                      children: [
                        ProTextKurdish(
                            fontsize: 26,
                            rang: Colors.white,
                            text: "15",
                            sW: sW * 0.07,
                            lines: 1),
                        ProTextKurdish(
                            fontsize: 20,
                            rang: Colors.white,
                            text: "دڵخوازەکان",
                            sW: sW * 0.19,
                            lines: 1),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.only(right: sW * 0.15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExtraDetail(
                            sH: sH,
                            sW: sW * 1.7,
                            bigTitle: "ناوی تەواو",
                            smallTitle: "Diary Tariq Ibrahem"),
                        ExtraDetail(
                            sH: sH,
                            sW: sW * 1.7,
                            bigTitle: "ئیمەیڵ",
                            smallTitle: "diary.313205014@uhd.edu.iq"),
                        ExtraDetail(
                            sH: sH,
                            sW: sW * 1.7,
                            bigTitle: "ژمارەی مۆبایل",
                            smallTitle: "07766927817"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: GNav(
            onTabChange: (index) {
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ComicPage()));
              } //Comics
              else if (index == 2) {
              } //Fav
              else if (index == 3) {} //Acc
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

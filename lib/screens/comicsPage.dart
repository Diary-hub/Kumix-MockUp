// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/categoryContainerCard.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
import 'package:project_zanko/screens/actionComics.dart';

class ComicPage extends StatefulWidget {
  const ComicPage({super.key});

  @override
  State<ComicPage> createState() => _ComicPageState();
}

class _ComicPageState extends State<ComicPage> {
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
    );
  }
}

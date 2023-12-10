import 'package:flutter/material.dart';
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
        Stack(
          children: [
            Positioned(
                child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                elevation: 15,
                shadowColor: Colors.white,
                child: Container(
                  width: sW * 0.9,
                  height: sH * 0.2,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/originals/5b/ed/00/5bed000df57b090e6f0d91969a80b091.gif',
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
            )),
            Positioned(
                bottom: sH * 0.18,
                left: sW * 0.54,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: sW * 0.3,
                  height: sH * 0.050,
                  child: Center(
                    child: ProTextKurdish(
                        fontsize: 20, rang: Colors.black, text: 'ئەکشن'),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}

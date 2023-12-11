import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proText.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';
import 'package:project_zanko/datas/database.dart';
import 'package:project_zanko/helpers/fontScalor.dart';
import 'package:project_zanko/screens/detailsPage.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sW = MediaQuery.of(context).size.width;
    final double sH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
            size: 20,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Text('     '),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Text('     ')
        ],
        centerTitle: true,
        title: ProTextKurdish(fontsize: 20, rang: Colors.white, text: 'ئەکشن'),
      ),
      body: Container(
        width: sW * 1,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // number of items in each row
              mainAxisExtent: sH * 0.24,
              mainAxisSpacing: 10, // spacing between rows
              crossAxisSpacing: 65.0, // spacing between columns
            ),
            padding: const EdgeInsets.only(left: 0, top: 14),
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
                          image: NetworkImage(coms[index].imgPoster),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: sH * .17,
                      width: sW * 0.3,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: ProText(
                          lines: 1,
                          text: 'Spider-Man',
                          textStyle: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Rabar',
                              fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Flexible(
                        child: RichText(
                          textScaler: TextScaler.linear(
                              ScaleSize.textScaleFactor(context)),
                          overflow: TextOverflow.ellipsis,
                          text: const TextSpan(
                            text: 'ڕۆمانس ، سەرکێشی',
                            style: TextStyle(
                                fontFamily: 'Rabar',
                                color: Colors.white54,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

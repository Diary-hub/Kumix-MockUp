import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/extraDetail.dart';
import 'package:project_zanko/components/designs/proText.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';

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
              radius: (sW + sH) * 0.07,
              backgroundColor: Colors.white,
              backgroundImage: const AssetImage('assets/images/login/img.jpg'),
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
                        color: Colors.white54,
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
      ),
    );
  }
}

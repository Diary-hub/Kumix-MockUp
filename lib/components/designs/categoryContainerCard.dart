import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';

class CategoryContainerCard extends StatelessWidget {
  CategoryContainerCard(
      {super.key,
      required this.sW,
      required this.sH,
      required this.topic,
      required this.rasm,
      required this.arwalla});

  Function arwalla;
  final double sW;
  final double sH;
  String topic;
  String rasm;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            arwalla();
          },
          child: Positioned(
              child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              elevation: 10,
              shadowColor: Colors.white,
              child: Container(
                width: sW * 0.9,
                height: sH * 0.2,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                        image: NetworkImage(
                          rasm,
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
          )),
          Positioned(
              bottom: sH * 0.18,
              left: sW * 0.54,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: sW * 0.3,
                height: sH * 0.050,
                child: Center(
                  child: ProTextKurdish(
                      lines: 1,
                      sW: sW,
                      fontsize: 20,
                      rang: Colors.black,
                      text: topic),
                ),
              ))
        ],
      ),
    );
  }
}

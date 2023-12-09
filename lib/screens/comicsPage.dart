import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class ComicsPage extends StatelessWidget {
  ComicsPage({super.key});

  final List<String> listImages = [
    'https://images.pexels.com/photos/3680289/pexels-photo-3680289.jpeg?cs=srgb&dl=pexels-eric-do-3680289.jpg&fm=jpg',
    'https://www.factroom.ru/wp-content/uploads/2019/04/5-sobiraetes-syuda-priekhat.jpg',
    'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',
    'https://images.unsplash.com/photo-1570158268183-d296b2892211?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBvcnRyYWl0fGVufDB8fDB8fHww',
    'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double sW = MediaQuery.of(context).size.width;
    final double sH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          CarouselImages(
            scaleFactor: 0.6,
            listImages: listImages,
            height: 300.0,
            borderRadius: 30.0,
            cachedNetworkImage: true,
            verticalAlignment: Alignment.topCenter,
            onTap: (index) {},
          )
        ],
      ),
    );
  }
}

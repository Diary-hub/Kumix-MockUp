import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_zanko/datas/route.dart';

class RouteController extends StatefulWidget {
  const RouteController({super.key});

  @override
  State<RouteController> createState() => _RouteControllerState();
}

class _RouteControllerState extends State<RouteController> {
  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      body: controller.pages[controller.index.value],
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: GNav(
            activeColor: Colors.amber,
            onTabChange: (index) {
              setState(() {
                controller.index.value = index;
              });
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
              ),
            ]),
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:project_zanko/screens/cardPage.dart';
import 'package:project_zanko/screens/comicsPage.dart';
import 'package:project_zanko/screens/homePage.dart';
import 'package:project_zanko/screens/profilePage.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    ComicPage(),
    CardPage(),
    ProfilePage(),
  ];
}

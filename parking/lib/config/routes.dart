import 'package:get/get.dart';
import 'package:parking/pages/map_page.dart';
import 'package:parking/pages/homepage/homepage.dart';

var pages = [
  GetPage(
    name: '/homepage',
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/map-page',
    page: () => MapPage(),
    transition: Transition.fade,
  ),
];

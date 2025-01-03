import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:parking/pages/homepage/homepage.dart';
import 'package:parking/pages/map_page.dart';
import 'config/routes.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parking System',
      getPages: pages,
      theme: ThemeData(useMaterial3: true),
      // home: HomePage(),
      home: MapPage(),
    );
  }
}

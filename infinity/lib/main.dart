import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: InfinityHome(),
    );
  }
}

class InfinityHome extends StatefulWidget {
  const InfinityHome({super.key});

  @override
  State<InfinityHome> createState() => _InfinityHomeState();
}

class _InfinityHomeState extends State<InfinityHome> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

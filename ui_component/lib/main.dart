import 'package:flutter/material.dart';
import 'package:ui_component/component.dart';
import 'package:ui_component/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Appcolor.background,
        body: Component(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../utils/colors.dart';
class BigText extends StatelessWidget {
  final String text;
  const BigText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Appcolor.largeText,
      ),);
  }
}

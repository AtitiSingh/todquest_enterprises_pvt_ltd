import 'package:flutter/material.dart';

import '../utils/colors.dart';
class SmallText extends StatelessWidget {
  final String text;

  const SmallText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Appcolor.smallText,
    ),);
  }
}

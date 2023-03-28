import 'package:flutter/material.dart';
class CardContainer extends StatelessWidget {
  final List<Color> colors;
  final Widget? child;
  const CardContainer({Key? key, required this.colors, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(150), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
          stops: [0.4, 0.7],
          tileMode: TileMode.repeated,
        ),
      ),
      child: child,
    );
  }
}

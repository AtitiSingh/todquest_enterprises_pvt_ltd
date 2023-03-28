import 'package:flutter/material.dart';
class ImageHolder extends StatelessWidget {
  final ImageProvider image;
  const ImageHolder({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Image(
        image: image,
        fit: BoxFit.contain,
      ),
    );
  }
}

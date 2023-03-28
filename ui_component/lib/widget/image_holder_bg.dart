import 'package:flutter/material.dart';
    class ImageHolderBackground extends StatelessWidget {
      final Color? color;
      const ImageHolderBackground({Key? key, this.color}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: color,
          ),
        );
      }
    }

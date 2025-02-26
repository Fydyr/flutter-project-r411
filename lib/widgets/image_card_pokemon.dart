import 'package:flutter/material.dart';

class ImageCardPokemon extends StatelessWidget {
  const ImageCardPokemon({super.key, required this.height, required this.width, required this.color, required this.widget});

  final double height;
  final double width;
  final Color color;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          border:  Border.all(
            color: Colors.black38,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(25)
      ),
      height: height,
      width: width,
      child: widget,
    );
  }
}
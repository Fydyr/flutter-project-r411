import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, this.path = "images/backgrounds", required this.name});

  final String path;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("$path/$name"),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class CardBackground extends StatelessWidget {
  const CardBackground({
    super.key,
    required this.height,
    required this.width,
    this.color,
    this.gradient,
    required this.widget,
  });

  final double height;
  final double width;
  final Color? color;
  final Gradient? gradient;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        border: Border.all(
          color: Colors.black38,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      height: height,
      width: width,
      child: widget,
    );
  }
}

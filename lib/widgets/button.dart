import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.colorBackground, required this.colorText, required this.text, this.onPressed, this.onLongPressed, this.width, this.height});

  final Color colorBackground;
  final Color colorText;
  final String text;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == 30 ? null : width,  // Appliquer la largeur
      height: height == 30 ? null : height, // Appliquer la hauteur
      child: ElevatedButton(
        onPressed: () => onPressed == null ? null : onPressed!(),
        onLongPress: () => onLongPressed == null ? null : onLongPressed!(),
        style: ElevatedButton.styleFrom(
          backgroundColor: colorBackground,
          foregroundColor: colorText,
          elevation: 2,
          textStyle: const TextStyle(fontSize: 20),
        ),
        child: Text(text),
      ),
    );
  }
}

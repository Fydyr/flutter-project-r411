import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.colorBackground, required this.colorText, required this.text, this.onPressed, this.onLongPressed, this.width=100, this.height=50});

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
      height: height,
      width: width,
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

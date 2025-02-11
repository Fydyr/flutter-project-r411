import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.colorBackground, required this.colorText, required this.text, this.onPressed, this.onLongPressed, required this.width, required this.height});

  final Color colorBackground;
  final Color colorText;
  final String text;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPressed == null ? null : onPressed!(),
        onLongPress: () => onLongPressed == null ? null : onLongPressed!(),
        style: ElevatedButton.styleFrom(
          backgroundColor: colorBackground,
          foregroundColor: colorText,
          elevation: 2,
        ),
        child: Text(text),
    );
  }
}

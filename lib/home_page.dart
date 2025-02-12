import 'package:flutter/material.dart';

import 'widgets/background.dart';
import 'widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Background(),
        Center(
          child: Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "Test", height: 512, width: 128,),
        ),
      ],
    );
  }
}

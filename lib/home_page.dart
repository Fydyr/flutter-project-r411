import 'package:flutter/material.dart';
import 'package:flutter_project_r411/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background_screen_title.jpg"),
                fit: BoxFit.cover
            )
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "Test"),
      ),
    );
  }
}

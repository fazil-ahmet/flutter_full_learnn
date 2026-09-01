import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Color")),
      body: Container(
        color: ColorsItems.sulu,
        child: Text(
          "data",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Theme.of(context).cardColor,
          ),
        ),
      ),
    );
  }
}

class ColorsItems {
  final Color Porsche = Color(0xffedbf61);
  static Color sulu = Color.fromARGB(197, 31, 7, 247);
}

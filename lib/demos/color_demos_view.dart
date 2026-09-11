import 'dart:developer';

import 'package:flutter/material.dart';
//Bir Ekran Olacak
//Bu ekranda 3 button ve bunlara basıncarenk değşimi olacak
//Secili olan button selected icon olsun

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.inittialColor});
  final Color? inittialColor;
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor;
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.inittialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // print(oldWidget.inittialColor != _backgroundColor);
    //bize ne geldiğini söylor

    inspect(widget);
    if (oldWidget.inittialColor != _backgroundColor &&
        widget.inittialColor != null) {
      _changeBackgroundColor(widget.inittialColor!);
    }
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOntop,

        items: [
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red),
            label: "RED",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow),
            label: "YELLOW",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blueAccent),
            label: "BLUE",
          ),
        ],
      ),
    );
  }

  void _colorOntop(int value) {
    if (value == _MyColors.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      _changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      _changeBackgroundColor(Colors.blueAccent);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}

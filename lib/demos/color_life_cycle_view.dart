import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _changeBackgroind,
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorDemosView(inittialColor: _backgroundColor)),
        ],
      ),
    );
  }

  void _changeBackgroind() {
    setState(() {
      _backgroundColor = Colors.pinkAccent;
    });
  }
}

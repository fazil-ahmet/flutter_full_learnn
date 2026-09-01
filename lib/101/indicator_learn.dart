import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CenterCircularProgress()]),
      body: Column(
        children: [
          Center(child: CenterCircularProgress()),
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeCap: StrokeCap.square,
        strokeWidth: 10,
        value: 0.7,
        backgroundColor: Colors.red,
      ),
    ); //color: Colors.white24));
  }
}

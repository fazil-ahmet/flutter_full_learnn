import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: const Color.fromARGB(255, 8, 26, 58), height: 200),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.amberAccent,
              height: 100,
              child: Center(
                child: Text(
                  "FENERBAHÇE",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Color.fromARGB(255, 8, 26, 58),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

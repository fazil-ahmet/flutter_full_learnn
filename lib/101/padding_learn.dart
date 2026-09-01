import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddimgVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color.fromARGB(255, 104, 49, 49),
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text("ali"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddimgVertical = EdgeInsets.symmetric(horizontal: 10);
}

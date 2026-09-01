import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Learn")),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            child: SizedBox.square(dimension: 100),
            color: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          Card(
            child: SizedBox.square(dimension: 50),
            color: Theme.of(context).colorScheme.error,
            shape: StadiumBorder(),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static EdgeInsets cardMargin = EdgeInsets.all(10);
}


//Border:
//StadiumBorder(),
//circleBorder();
//RoundedRectangleBorder
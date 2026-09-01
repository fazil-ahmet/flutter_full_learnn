import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});
  //leat compant
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.tealAccent)),
                Expanded(child: Container(color: Colors.blueGrey)),
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [FlutterLogo(), FlutterLogo(), FlutterLogo()],
            ),
          ),
          SizedBox(
            height: ProjectCutomSizes.cardheight,
            child: Column(
              children: [
                Expanded(child: FlutterLogo()),
                Expanded(child: FlutterLogo()),
                Spacer(),
                Expanded(child: FlutterLogo()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCutomSizes {
  static double cardheight = 200;
}

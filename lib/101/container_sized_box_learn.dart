import 'dart:math';

import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(width: 200, height: 200, child: Text("m")),
          SizedBox.shrink(), // boş bie alan için kullanılan;
          SizedBox.square(dimension: 50, child: Text("a" * 50)),
          Container(
            //width: 50,
            // height: 50,
            constraints: BoxConstraints(
              maxWidth: 150,
              minWidth: 50,
              maxHeight: 100,
            ),
            child: Text("aa" * 2),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          ),
        ],
      ),
    );
  }
}

class ProjectConteinerDecoration extends BoxDecoration {
  ProjectConteinerDecoration()
    : super(
        // color: const Color.fromRGBO(17, 2, 100, 1),
        //shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [Colors.red, Colors.black]),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(230, 165, 209, 8),
            offset: Offset(0.1, 5),
            blurRadius: 12,
          ),
        ],
        border: Border.all(width: 10, color: Color.fromARGB(115, 12, 10, 124)),
      );
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    // color: const Color.fromRGBO(17, 2, 100, 1),
    //shape: BoxShape.circle,
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(230, 165, 209, 8),
        offset: Offset(0.1, 5),
        blurRadius: 12,
      ),
    ],
    border: Border.all(width: 10, color: Color.fromARGB(115, 12, 10, 124)),
  );
}

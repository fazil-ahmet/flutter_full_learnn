import 'package:flutter/material.dart';

class AppbarLearn extends StatelessWidget {
  const AppbarLearn({super.key});

  final String _title = "WELCOME LEARN";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarTextStyle: TextStyle(),
        //leadingWidth: 23,
        title: Text(_title),
        leading: Icon(Icons.chevron_left),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
          //Center(child: CircularProgressIndicator()),
        ],
        actionsIconTheme: IconThemeData(color: Colors.red, size: 24),
      ),
      body: Column(children: [

      ],
      ),
    );
  }
}

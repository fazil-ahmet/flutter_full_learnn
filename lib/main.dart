import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learnn/101/appbar_learn.dart';
import 'package:flutter_full_learnn/101/button_learn.dart';
import 'package:flutter_full_learnn/101/card_learn.dart';
import 'package:flutter_full_learnn/101/color_learn.dart';
import 'package:flutter_full_learnn/101/column_row_learn.dart';
import 'package:flutter_full_learnn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learnn/101/custom_widget_learn.dart';
import 'package:flutter_full_learnn/101/image_learn.dart';
import 'package:flutter_full_learnn/101/indicator_learn.dart';
import 'package:flutter_full_learnn/101/list_tile_learn.dart';
import 'package:flutter_full_learnn/101/padding_learn.dart';
import 'package:flutter_full_learnn/101/page_view_learn.dart';
import 'package:flutter_full_learnn/101/scaffold_learn.dart';
import 'package:flutter_full_learnn/101/stack_learn.dart';
import 'package:flutter_full_learnn/101/state_full_learn.dart';
import 'package:flutter_full_learnn/101/statefull_life_cycle_learn.dart';
import 'package:flutter_full_learnn/101/stateless_learn.dart';
import 'package:flutter_full_learnn/101/text_field_learn.dart';
import 'package:flutter_full_learnn/101/text_learn_view.dart';
import 'package:flutter_full_learnn/101/icon_learn.dart';
import 'package:flutter_full_learnn/demos/note_demos_view.dart';
import 'package:flutter_full_learnn/demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.white,
        ),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardColor: ColorsItems().Porsche,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 9, 10, 10),
          elevation: 8,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: TextFieldLearn(),
    );
  }
}

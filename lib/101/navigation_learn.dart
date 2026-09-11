import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/101/image_learn.dart';
import 'package:flutter_full_learnn/101/navigate_detail_learn.dart';
import 'package:flutter_full_learnn/demos/color_life_cycle_view.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              bool? respove = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailLearn(isOkey: selectedItems.contains(index)),
              );
              if (respove is bool) {
                addSelected(index, respove);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Placeholder(color: selectedItems.contains(index) ? Colors.green : Colors.red),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next_outlined),
        onPressed: () {},
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => widget,
        fullscreenDialog: true,
        settings: RouteSettings(arguments: context),
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (BuildContext context) => widget,
        fullscreenDialog: true,
        settings: RouteSettings(arguments: context),
      ),
    );
  }
}

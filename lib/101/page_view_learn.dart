import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/101/column_row_learn.dart';
import 'package:flutter_full_learnn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learnn/101/stack_learn.dart';
import 'package:flutter_full_learnn/demos/note_demos_view.dart';
import 'package:flutter_full_learnn/demos/stack_demo_view.dart';

class PageViewLearn extends StatefulWidget {
  PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageVCOntroller = PageController(viewportFraction: 1);

  int _currentPageIndex = 1;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              _currentPageIndex.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageVCOntroller.previousPage(
                duration: _DurationUtility._durationlow,
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            child: Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageVCOntroller.nextPage(
                duration: _DurationUtility._durationlow,
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageVCOntroller,
        onPageChanged: _updatePageIndex,
        children: [
          NoteDemosView(),
          ColumnRowLearn(),
          StackDemoView(),
          StackLearn(),
          ContainerSizedBoxLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationlow = Duration(seconds: 1);
}

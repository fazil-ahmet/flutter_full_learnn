import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/101/image_learn.dart';
import 'package:flutter_full_learnn/101/page_view_learn.dart';
import 'package:flutter_full_learnn/101/stack_learn.dart';
import 'package:flutter_full_learnn/demos/color_life_cycle_view.dart';
import 'package:flutter_full_learnn/demos/stack_demo_view.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabcontroller;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabcontroller.animateTo(_MyTabViews.home.index);
          },
        ),
        body: _tabbarView(),
        bottomNavigationBar: BottomAppBar(notchMargin: _notchedValue, child: _myTabView()),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
      //sıkıştırma için;
      isScrollable: false,
      padding: EdgeInsets.zero,
      controller: _tabcontroller,
      //on taop ile hangi tab'e tıklandığını burada yaklayabiliriz
      onTap: (int value) {},
      tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}")).toList(),
    );
  }

  TabBarView _tabbarView() {
    return TabBarView(
      //kaydırarak widgetlar arası geçmeyi kapatır.
      physics: NeverScrollableScrollPhysics(),
      controller: _tabcontroller,
      children: [ImageLearn(), StackLearn(), ColorLifeCycleView(), StackDemoView()],
    );
  }
}

enum _MyTabViews { home, settings, profile, favorite }










/*tabs: [
              Tab(text: "Page 1"),
              Tab(text: "Page 2"),
            ],
*/

        /*appBar: AppBar(
          bottom: TabBar(
            controller: _tabcontroller,
            tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}")).toList(),
            ),
        ),*/
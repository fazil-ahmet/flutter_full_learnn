import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/product/counter_hello_button.dart';
import 'package:flutter_full_learnn/product/language/language_items.dart';
//import 'package:flutter/src/widgets/icon_data.dart.';

class StateFullLearn extends StatefulWidget {
  const StateFullLearn({super.key});

  @override
  State<StateFullLearn> createState() => _StateFullLearnState();
}

class _StateFullLearnState extends State<StateFullLearn> {
  int _countValue = 0;
  void _updateConunter(bool paremnt) {
    if (paremnt == true) {
      _countValue = ++_countValue;
    } else {
      _countValue = --_countValue;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _deincrementButton()],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateConunter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateConunter(true);
      },
      child: Icon(Icons.add),
    );
  }
}
// setState çalıştığında buil metodu tekrar tetiklenir.
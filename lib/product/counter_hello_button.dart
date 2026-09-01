import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCostum = 0;
  final String welcomeTitle = LanguageItems.welcomeTitle;
  void _updateCounter() {
    setState(() {
      ++_counterCostum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text(
        "$welcomeTitle $_counterCostum",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}

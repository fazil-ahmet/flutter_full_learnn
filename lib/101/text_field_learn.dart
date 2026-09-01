import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 30,
        buildCounter:
            (
              context, {
              int? currentLength,
              bool? isFocused,
              int? maxLength,
            }) {
              return Container(
                height: 10,
                width: 50,
                color: Colors.blueAccent[10 * ((currentLength ?? 0) ~/ 2)],
              );
            },

        //custom compant yapmak için çok işe yarar.
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          labelText: "MAİL",
          hintText: "fenerbahçe",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

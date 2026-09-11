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
              return _animatedConteiner(currentLength);

              /*Container(
                height: 10,
                width: 50,
                color:
                    Colors.blueAccent[100 * ((currentLength ?? 0) ~/ 2)],
              );*/
            },

        //kelime tamlayıcı.
        autofillHints: [AutofillHints.addressCity],
        //klavyeyi email cinsinden oluşturur.
        keyboardType: TextInputType.emailAddress,
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

  AnimatedContainer _animatedConteiner(int? currentLength) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      key: UniqueKey(),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.amber,
    );
  }
}

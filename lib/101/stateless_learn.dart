import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    var fazil = 'fazil';
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: "${fazil}"),
          TitleTextWidget(text: "fazil1"),
          _emptyBox(),
          _CustomContainer(),
          TitleTextWidget(text: "fazil2"),
          TitleTextWidget(text: "fazil3"),
          _emptyBox(),
          TitleTextWidget(text: "fazil4"),

          _CustomContainer(),

          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() {
    return SizedBox(height: 10);
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amberAccent,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}

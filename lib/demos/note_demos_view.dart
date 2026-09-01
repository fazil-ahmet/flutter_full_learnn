import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learnn/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});
  final title = 'Create your first note';
  final itle = "Add a note";
  final _buttontitle = "Create a Note";
  final _importNotes = "import notes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 206, 233),
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.light),
      body: Padding(
        padding: PaddingItems.horzinotalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItems().appleWithhBook),
            TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(itle: itle * 10),
            ),
            Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeights.ButtonNormalHeights,
                child: Center(
                  child: Text(
                    _buttontitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                _importNotes,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({this.texAlign = TextAlign.center, required this.itle});
  final TextAlign texAlign;
  final String itle;

  @override
  Widget build(BuildContext context) {
    return Text(
      itle,
      textAlign: texAlign,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class PaddingItems {
  static EdgeInsets horzinotalPadding = EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static double ButtonNormalHeights = 50;
}

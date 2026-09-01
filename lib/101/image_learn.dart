import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: PngImage(path: ImageItems().sinama),
          ),
          SizedBox(height: 10, width: 20),
          SizedBox(
            height: 200,
            width: 200,
            child: PngImage(path: ImageItems().appleWithhBook),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithhBook = "IMG_20200814_193042.jpg";
  final String sinama = "Ekran görüntüsü 2023-03-27 110551.png";
}

class PngImage extends StatelessWidget {
  PngImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/jpg/$path", fit: BoxFit.cover);
  }
}

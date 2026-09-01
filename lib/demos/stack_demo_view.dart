import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 250.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: JpgImage(path: ImageItems2().resim4),
                  bottom: _cardHeight / 2,
                ),
                Positioned(height: _cardHeight, width: _cardWidth, bottom: 0, child: _CardCustom()),
              ],
            ),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}

class _CardCustom extends StatelessWidget {
  const _CardCustom();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    );
  }
}

class ImageItems2 {
  final String resim1 = "resim";
  final String resim2 = "resim2";
  final String resim3 = "resim3";
  final String resim4 = "resim4";
  final String kek = "kek";
  final String foto1 = "foto1";
}

class JpgImage extends StatelessWidget {
  const JpgImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/jpg/$path.jpg", fit: BoxFit.cover);
  }
}

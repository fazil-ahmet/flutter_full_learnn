import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        //ne kdar çizildiğini belirleme;
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({super.key, required CollectionModel model}) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingAll,
        child: Column(
          children: [
            Image.asset(_model.imagePath, fit: BoxFit.fill),
            Padding(padding: PaddingUtility().paddingTop),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(_model.title), Text("${_model.price} eth")],
            ),
            Padding(padding: PaddingUtility().paddingBottom),
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.price, required this.title});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: "Abstract Art"),
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: "Abstract Art"),
      CollectionModel(imagePath: ProjectImages.imageCollection, price: 3.4, title: "Abstract Art"),
    ];
  }
}

class PaddingUtility {
  final paddingBottom = EdgeInsets.only(bottom: 15);
  final paddingTop = EdgeInsets.only(top: 15);
  final paddingAll = EdgeInsetsGeometry.all(20);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 50);
}

class ProjectImages {
  static const imageCollection = "assets/jpg/resim3.jpg";
}

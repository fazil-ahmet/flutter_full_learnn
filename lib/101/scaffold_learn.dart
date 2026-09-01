import 'package:flutter/material.dart';
import 'package:flutter_full_learnn/101/container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold samples")),
      body: Text("MERHBA", style: TextStyle(color: Colors.red)),
      backgroundColor: Colors.amber,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(height: 200),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(),

      bottomNavigationBar: Container(
        decoration: ProjectConteinerDecoration(),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "B"),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "c"),
          ],
        ),
      ),
    );
  }
}

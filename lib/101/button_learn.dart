import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Button samples"))),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("a"),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                // ignore: collection_methods_unrelated_type
                if (states.contains(WidgetState.pressed)) {
                  return Colors.red;
                }
                return Colors.white;
              }),
            ),
          ),
          ElevatedButton(onPressed: null, child: Text("data")),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.audiotrack, color: Colors.green),
          ),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          SizedBox(
            height: 100,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                shape: RoundedRectangleBorder(),
                padding: EdgeInsets.all(10),
              ),

              onPressed: () {
                //setrvise istek at
                //sayfanın rengini düzenle
              },
              child: Text(
                "MAVİ",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.red),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "CUSTOM",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text("data"),
            icon: Icon(Icons.abc),
          ),
          Container(height: 200, color: Colors.white),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 63, 51, 51),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                "place Bid",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//Border 
//CircleBorder()
//RoundRectangleBorder()

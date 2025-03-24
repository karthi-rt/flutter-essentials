import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: InkwellApp()));
}

class InkwellApp extends StatelessWidget {
  InkwellApp({super.key});

  final List<String> data = [
    "data1",
    "data2",
    "data3",
    "data4",
    "data5",
    "data6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          const Icon(Icons.shopping_cart, color: Colors.deepOrangeAccent),
        ],
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        // controller: ScrollController(),
        // physics: NeverScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.amber,
              height: 100,
              child: Center(child: Text(data[index])),
            ),
          );
        },
      ),
    );
  }
}

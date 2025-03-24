import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/single_list.dart';

void main() {
  runApp(MaterialApp(home: PropsApp()));
}

class PropsApp extends StatelessWidget {
  PropsApp({super.key});

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
        itemCount: data.length,
        itemBuilder: (context, index) {
          return SingleWidget(
            data: data[index],
            color: Colors.deepPurpleAccent,
            paddingArea: 22,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {

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
    return ListView.builder(
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
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const RowApp()));
}

class RowApp extends StatelessWidget {
  const RowApp({super.key});
  // const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: Container(
        color: Colors.amber,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.lightGreen,
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.lightGreen,
            ),
          ],
        ),
      ),
    );
  }
}

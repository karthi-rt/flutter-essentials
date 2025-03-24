import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const PaddingPage(),
  ));
}

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});
  // const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: Padding(
        // padding: EdgeInsets.all(20),
        // padding: EdgeInsets.only(top: 2, bottom: 5, left: 3, right: 8),
        padding: EdgeInsets.zero,
        // padding: EdgeInsets.symmetric(horizontal: 20),
        child: const Text("Padding Widget"),
      ),
    );
  }
}
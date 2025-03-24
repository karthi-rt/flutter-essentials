import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const TextApp()));
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});
  // const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: Center(
        child: const Text(
          "This is the Flutter Tutorials, It contains the Lot of files",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            // overflow: TextOverflow.ellipsis,  // overflow text wrapped with three dot
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

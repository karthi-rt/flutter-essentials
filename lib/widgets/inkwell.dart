import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const InkwellApp()));
}

class InkwellApp extends StatelessWidget {
  const InkwellApp({super.key});

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
      body: Center(
        child: InkWell(
          onTap: () {
            print("Text Clicked");
          },
          child: const Text("Press Me", style: TextStyle(fontSize: 50)),
        ),
      ),
    );

    /*
    Icon(
          Icons.near_me,
          size: 100,)),
    */
  }
}

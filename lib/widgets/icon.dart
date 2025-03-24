import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const IconApp()));
}

class IconApp extends StatelessWidget {
  const IconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [const Icon(Icons.shopping_cart, color: Colors.deepOrangeAccent,)],
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: Center(
        child: IconButton(
          color: Colors.amber,
          iconSize: 100,
          onPressed: () {
            print("Button Clicked");
          },
          icon: const Icon(Icons.near_me, size: 100),
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

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StateApp()));
}

class StateApp extends StatefulWidget {
  StateApp({super.key});

  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.shopping_cart, color: Colors.deepOrangeAccent)],
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            setState(() {
              isActive = !isActive; // vice-versa alternative
            });
          },
          child: Container(
            color: isActive ? Colors.teal : Colors.amber,
            height: 100,
            child: Center(child: Text("Welcome")),
          ),
        ),
      ),
    );
  }
}
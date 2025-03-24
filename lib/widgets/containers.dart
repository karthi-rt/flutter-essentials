import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerApp());
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Widget Tutorial")),
        body: Container(
          constraints: const BoxConstraints(
            
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 4,
              style: BorderStyle.solid,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          child: const Text('Hello World!'),
        ),
      ),
    );
  }
}

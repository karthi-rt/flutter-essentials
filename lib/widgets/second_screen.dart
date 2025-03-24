import 'package:flutter/material.dart';

class SecondScreeen extends StatefulWidget {
  const SecondScreeen({super.key});

  @override
  State<SecondScreeen> createState() => _SecondScreeenState();
}

class _SecondScreeenState extends State<SecondScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Second Widget"),
      ),
      body: Center(
        child: Text("Second Screen"),
      ),
    );
  }
}
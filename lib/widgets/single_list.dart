import 'package:flutter/material.dart';

class SingleWidget extends StatelessWidget {
  final String data;
  final Color color;
  final double? paddingArea;

  const SingleWidget({
    Key? key,
    required this.data,
    this.color = Colors.amberAccent,
    this.paddingArea
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // padding: const EdgeInsets.all(paddingArea ?? 10.0),
      child: Container(
        color: color,
        height: 100,
        child: Center(child: Text(data)),
      ),
    );
  }
}

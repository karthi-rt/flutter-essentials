import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const ColumnApp()));
}

class ColumnApp extends StatelessWidget {
  const ColumnApp({super.key});
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "First One",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                // overflow: TextOverflow.ellipsis,  // overflow text wrapped with three dot
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 6),

            SizedBox(
              width: 200,
              child: Text(
                "Second One",
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
          ],
        ),
      ),
    );
  }
}

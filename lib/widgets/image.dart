import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const ImageApp()));
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});
  // const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"), 
      ),
      // https://live.staticflickr.com/4365/37082384235_a643fba80d_b.jpg  // true
      //https://2.img-dpreview.com/files/p/E~C1000x0S4000x4000T1200x1200~articles/3925134721/0266554465.jpeg // false
      body: Image.asset(
        "assets/tea.png",
        width: 200,
        height: 200,
        errorBuilder: (context, _, _) {
          return Container(
            color: Colors.red,
            height: 200,
            width: 200,child: Center(
              child: Text('Error loading image',
                style: TextStyle(color: Colors.white),
        ),
      ),
          );

        } ,
      ),

      /*  Load Image from Network
      Image.network(
        "https://live.staticflickr.com/4365/37082384235_a643fba80d_b.jpg",
        width: 200,
        height: 200,
        loadingBuilder: (context, child, loadingProgress) => CircularProgressIndicator(),
        errorBuilder: (context, _, _) {
          return Container(color: Colors.amber, height: 200, width: 200);
        },
      ),
      */
    );
  }
}

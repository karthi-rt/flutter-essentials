import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  late Future<dynamic> products;

  @override
  void initState() {
    // Widget is building for the first time
    super.initState();
    products = getAllProducts();
  }

  getAllProducts() async {
    final data = http.get(Uri.parse("https://fakestoreapi.com/products"));
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EOC Store"), backgroundColor: Colors.blue),

      body: FutureBuilder<dynamic>(
        future: products,
        builder: (context, snapshot) {
          final isCompleted = snapshot.connectionState == ConnectionState.done;
          final data = isCompleted ? jsonDecode(snapshot.data.body) as List<dynamic> : [];
          return isCompleted
              ? Container(child: Text(data[0]['title']))
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

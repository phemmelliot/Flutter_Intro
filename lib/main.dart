import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('New EasyList'),
            ),
            body: ProductManager(startingProduct: 'Food Tester')));
  }
}
import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          title: Text('New EasyList'),
        ),
        body: ProductManager());
  }
}

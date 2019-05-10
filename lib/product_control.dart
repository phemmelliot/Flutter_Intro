import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        color: Theme.of(context).accentColor,
        onPressed: () {
          addProduct('Sweet Tester');
        },
        child: Text('Add Product'));
  }
}
import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager({this.products, this.addProduct, this.deleteProduct});

//  @override
//  State<StatefulWidget> createState() {
//    return _ProductManagerState();
//  }
//}
//
//class _ProductManagerState extends State<ProductManager> {
//  List<Map<String, dynamic>> _products = [];
//
//  void _addProduct(product) {
//    setState(() {
//      _products.add(product);
//    });
//  }
//
//  void _deleteProduct(index) {
//    setState(() {
//      _products.removeAt(index);
//    });
//  }
//
//  @override
//  void initState() {
//    if (widget.startingProduct != null) {
//      _products.add(widget.startingProduct);
//    }
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(addProduct)),
        Expanded(child: Products(products, deleteProduct: deleteProduct)),
      ],
    );
  }
}

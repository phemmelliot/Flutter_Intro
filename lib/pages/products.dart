import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage({this.products, this.addProduct, this.deleteProduct});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Manage Products'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/admin');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('New EasyList'),
        ),
        body: ProductManager(products: products, addProduct: addProduct, deleteProduct: deleteProduct));
  }
}

import 'package:flutter/material.dart';

import './pages/auth.dart';
import 'pages/product.dart';
import 'pages/product_admin.dart';
import 'pages/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _products = [];

  void _addProduct(product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(
              products: _products,
              addProduct: _addProduct,
              deleteProduct: _deleteProduct,
            ),
        '/admin': (BuildContext context) => ProductsAdminPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        }
        final int index = int.parse(pathElements[2]);
        if (pathElements[1] == 'product') {
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductPage(
                  title: _products[index]['title'],
                  imageUrl: _products[index]['imageUrl'],
                ),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => ProductsPage(
                products: _products,
                addProduct: _addProduct,
                deleteProduct: _deleteProduct,
              ),
        );
      },
    );
  }
}

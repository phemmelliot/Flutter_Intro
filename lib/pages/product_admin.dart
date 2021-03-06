import 'package:flutter/material.dart';

import './products.dart';
import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Products'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                }
              )
            ],
          ),
        ),
        appBar: AppBar(
            title: Text('Manage Product'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  child: Text('Create'),
                ),
                Tab(
                  icon: Icon(Icons.list),
                  child: Text('Products'),
                )
              ],
            )),
        body: TabBarView(
          children: [
            ProductCreatePage(),
            ProductListPage(),
          ],
        ),
      ),
    );
  }
}

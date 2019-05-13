import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Page',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Product page')),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
            child: Column(
              children: <Widget>[
                Text('This is this is product page'),
                RaisedButton(
                  child: Text('Go Back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

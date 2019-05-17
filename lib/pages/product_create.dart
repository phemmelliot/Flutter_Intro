import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show Modal'),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: Text(
                    'Here is the bottom navigaiton sheet',
                    style: TextStyle(color: Colors.green),
                  ),
                );
              });
        },
      ),
    );
  }
}

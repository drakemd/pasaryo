import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/screens/shop_list/shop_list_header_widget.dart';

class ShopListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          SizedBox(height: _statusBarHeight),
          ShopListHeaderWidget()
        ],
      ),
    );
  }
}

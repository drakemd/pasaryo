import 'package:flutter/cupertino.dart';
import 'package:pasaryo/data/models/shopping_item.dart';
import 'package:pasaryo/utils/utils.dart';

import 'shopping_list.dart';

class ShoppingItemWidget extends StatelessWidget{
  final ShoppingItem _shoppingItem;

  ShoppingItemWidget(ShoppingItem shoppingItem): _shoppingItem = shoppingItem;

  final int _productImageSize = 50;
  final int _productNameFontSize = 12;
  final int _productDescriptionFontSize = 10;
  final int _productPriceFontSize = 15;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Row(
      //product row
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Image.asset(_shoppingItem.image,
                  width: wp(_productImageSize),
                  height: wp(_productImageSize))
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: wp(10)),
                child: Text(
                  _shoppingItem.name,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: fp(_productNameFontSize),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: wp(10)),
                  child: Text(_shoppingItem.description,
                      style:
                      TextStyle(fontFamily: "Raleway", fontSize: fp(_productDescriptionFontSize))))
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("Rp. " + _shoppingItem.price.toString(),
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: fp(_productPriceFontSize),
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 0, 0, 0.7))),
              ShoppingQuantityWidget(quantity: _shoppingItem.quantity)
            ],
          ),
        ),
      ],
    ); //Product row;
  }
}
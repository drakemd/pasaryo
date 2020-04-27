import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/utils/responsive_dimension.dart';

class ShoppingQuantityWidget extends StatelessWidget{
  final int _quantity;
  final int _productIncrementButtonSize = 20;
  final int _productQuantityFontSize = 20;

  ShoppingQuantityWidget({@required int quantity}): _quantity = quantity;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: wp(_productIncrementButtonSize),
          height: wp(_productIncrementButtonSize),
          child: FlatButton(
            padding: EdgeInsets.all(0),
            child: Image.asset("assets/icons/delete.png",
                width: wp(_productIncrementButtonSize), height: wp(_productIncrementButtonSize)),
            onPressed: () => {},
          ),
        ),
        SizedBox(width: wp(10)),
        Container(
            width: wp(_productIncrementButtonSize),
            height: wp(_productIncrementButtonSize),
            child: CupertinoButton(
                onPressed: () => {},
                padding: EdgeInsets.all(0),
                color: Color.fromRGBO(196, 196, 196, 1),
                borderRadius: BorderRadius.circular(13),
                child: Icon(Icons.remove,
                    color: Colors.black, size: wp(15)))),
        SizedBox(width: wp(10)),
        Text(_quantity.toString(),
            style: TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
                fontSize: fp(_productQuantityFontSize))),
        SizedBox(width: 10),
        Container(
            width: wp(_productIncrementButtonSize),
            height: wp(_productIncrementButtonSize),
            child: CupertinoButton(
                onPressed: () => {},
                padding: EdgeInsets.all(0),
                color: Color.fromRGBO(196, 196, 196, 1),
                borderRadius: BorderRadius.circular(13),
                child: Icon(Icons.add,
                    color: Colors.black, size: wp(15))))
      ],
    );
  }
}
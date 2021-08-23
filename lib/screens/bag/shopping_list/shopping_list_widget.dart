import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pasaryo/data/models/shopping_item.dart';
import 'package:pasaryo/screens/bag/shopping_list/shopping_item_header_widget.dart';
import 'package:pasaryo/screens/bag/shopping_list/shopping_list.dart';
import 'package:pasaryo/utils/utils.dart';

class ShoppingListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShoppingListWidgetState();
}

class ShoppingListWidgetState extends State<ShoppingListWidget> {
  final int _titleFontSize = 20;
  final int _clearBagButtonHeight = 30;
  final Color _deleteAllButtonColor = Color.fromRGBO(221, 99, 73, 1);
  final int _deleteAllButtonRadius = 5;
  final int _deleteAllButtonFontSize = 12;

  ShoppingItem pahaAyam = new ShoppingItem("Paha Ayam", "Harga per 100 gram", "assets/images/paha.png", 9000, 3);
  ShoppingItem sayapAyam = new ShoppingItem("Sayap Ayam", "Harga per 100 gram", "assets/images/sayap.png", 7000, 5);
  ShoppingItem bumbuRendang = new ShoppingItem("Bumbu Rendang", "Harga per sachet", "assets/images/bumburendang.png", 2000, 3);
  ShoppingItem masakoAyam = new ShoppingItem("Masako Ayam", "Harga per sachet", "assets/images/masako.png", 9000, 3);

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var outerPadding = ResponsiveDimensions.outerHorizontalPadding(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: outerPadding),
      child: Column(
        children: <Widget>[
          SizedBox(height: wp(20)),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Text("Pasar Pagi",
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: fp(_titleFontSize),
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: wp(_clearBagButtonHeight),
                  alignment: Alignment.centerRight,
                  child: CupertinoButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: wp(10)),
                    color: _deleteAllButtonColor,
                    borderRadius:
                        BorderRadius.circular(wp(_deleteAllButtonRadius)),
                    onPressed: () => {},
                    child: Text(
                      "Hapus Keranjang",
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: fp(_deleteAllButtonFontSize),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: wp(10)),
          getLukman(context),
          getSakdoel(context)
        ],
      ),
    );
  }

  Widget getLukman(context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Container(
      margin: EdgeInsets.only(top: wp(10)),
      child: Column(
        children: <Widget>[
          ShoppingItemHeaderWidget("Ayam Potong Bang Lukman"),
          SizedBox(height: wp(10)),
          ShoppingItemWidget(pahaAyam),
          SizedBox(height: 10),
          ShoppingItemWidget(sayapAyam)
        ],
      ),
    );
  }

  Widget getSakdoel(BuildContext context){
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Container(
      margin: EdgeInsets.only(top: wp(10)),
      child: Column(
        children: <Widget>[
          ShoppingItemHeaderWidget("Bumbu dapur Sakdoel"),
          SizedBox(height: wp(10)),
          ShoppingItemWidget(bumbuRendang),
          SizedBox(height: 10),
          ShoppingItemWidget(masakoAyam)
        ],
      ),
    );
  }
}

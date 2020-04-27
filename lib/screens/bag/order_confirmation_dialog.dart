import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/utils/utils.dart';

class OrderConfirmationDialog extends Dialog{

  static void showOrderConfirmation(BuildContext context, void Function() onClose, void Function() onOrder) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    //style
    final int _modalHeight = 420;
    final int _modalWidth = 350;
    final int _closeButtonSize = 20;
    final int _closeIconSize = 30;
    final int _modalFontSizeRegular = 15;
    final int _topSectionHeight = 120;
    final int _orderButtonWidth = 100;
    final int _orderButtonHeight = 30;
    final Color _orderButtonColor = Color.fromRGBO(221, 99, 73, 1);
    final int _orderButtonRadius = 5;

    Dialog simpleDialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
          height: wp(_modalHeight),
          width: wp(_modalWidth),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: wp(_closeButtonSize),
                      height: wp(_closeButtonSize),
                      margin: EdgeInsets.only(top: wp(10), right: wp(20)),
                      child: IconButton(
                          onPressed: () => onClose(),
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.close, size: wp(_closeIconSize))
                      ),
                    )
                  ],
                ),
                Text("Kamu akan memesan", style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: fp(_modalFontSizeRegular)
                )),
                SizedBox(height: wp(20)),
                Container(
                    height: wp(_topSectionHeight),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.only(left: wp(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Paha ayam x3", style: TextStyle(fontFamily: "Raleway", fontSize: 15)),
                                    Text("Sayap ayam x5", style: TextStyle(fontFamily: "Raleway", fontSize: 15)),
                                    Text("Bumbu Rendang x2", style: TextStyle(fontFamily: "Raleway", fontSize: 15)),
                                    Text("Masako Ayam x3", style: TextStyle(fontFamily: "Raleway", fontSize: 15)),
                                  ],
                                ),
                              )
                          ),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(right: wp(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("Rp. 27000", style: TextStyle(fontFamily: "Raleway", fontSize: fp(_modalFontSizeRegular))),
                                    Text("Rp. 35000", style: TextStyle(fontFamily: "Raleway", fontSize: fp(_modalFontSizeRegular))),
                                    Text("Rp. 6000", style: TextStyle(fontFamily: "Raleway", fontSize: fp(_modalFontSizeRegular))),
                                    Text("Rp. 27000", style: TextStyle(fontFamily: "Raleway", fontSize: fp(_modalFontSizeRegular)))
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    )
                ),
                Divider(thickness: 2,color: Color.fromRGBO(0, 0, 0, 0.2)),
                Padding(
                  padding: EdgeInsets.only(left: wp(10)),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/icons/location.png", width: wp(20), height: wp(20)),
                      SizedBox(width: 5),
                      Text("Lokasi Pengiriman", style: TextStyle(fontSize: fp(_modalFontSizeRegular), fontFamily: "Raleway"))
                    ],
                  ),
                ),
                SizedBox(height: wp(10)),
                Padding(
                  padding: EdgeInsets.only(left: wp(20)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Text("Ongkos kirim", style: TextStyle(fontSize: fp(_modalFontSizeRegular), fontFamily: "Raleway")),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                              padding: EdgeInsets.only(right: wp(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text("Rp. 10000", style: TextStyle(fontSize: fp(_modalFontSizeRegular), fontFamily: "Raleway"))
                                ],
                              )
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: wp(10)),
                Padding(
                    padding: EdgeInsets.only(right: wp(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Total Rp. 105000", style: TextStyle(fontFamily: "Roboto", fontSize: fp(20), fontWeight: FontWeight.w700))
                      ],
                    )
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: wp(20), vertical: wp(10)),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(wp(5)),
                            border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.2))
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(wp(5)),
                          child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration.collapsed(
                                hintText: "Beritahu driver detail alamat kamu atau titip pesan ke driver",
                                hintStyle: TextStyle(fontFamily: "Average", fontSize: fp(12), color: Color.fromRGBO(0, 0, 0, 0.5))
                            ),
                          ),
                        )
                    )
                ),
                Container(
                  width: wp(_orderButtonWidth),
                  height: wp(_orderButtonHeight),
                  child: CupertinoButton(
                      padding: EdgeInsets.all(0),
                      color: _orderButtonColor,
                      onPressed: () => onOrder(),
                      borderRadius: BorderRadius.circular(wp(_orderButtonRadius)),
                      child: Text("Pesan")
                  ),
                )
              ],
            ),
          )
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => simpleDialog);
  }
}
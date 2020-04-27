import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/utils/utils.dart';

class BagFooterWidget extends StatelessWidget{
  final void Function() _onPress;

  //styles
  final Color _backgroundColor = Colors.white;
  final int _containerShadowOffsetX = 0;
  final int _containerShadowOffsetY = -2;
  final int _containerShadowRadius = 1;
  final Color _containerShadowColor = Color.fromRGBO(0, 0, 0, 0.1);
  final int _containerHorizontalPadding = 20;
  final int _containerVerticalPadding = 15;
  final int _iconSize = 20;
  final int _fontSizeRegular = 15;

  BagFooterWidget({@required onPress}): _onPress = onPress;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Container(
      decoration: BoxDecoration(
          color: _backgroundColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(wp(_containerShadowOffsetX), wp(_containerShadowOffsetY)),
                blurRadius: wp(_containerShadowRadius),
                spreadRadius: wp(_containerShadowRadius),
                color: _containerShadowColor
            )
          ]
      ),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: wp(_containerHorizontalPadding), vertical: wp(_containerVerticalPadding)),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("assets/icons/location.png", width: wp(_iconSize), height:wp(_iconSize)),
                    SizedBox(width: wp(5)),
                    Text("Lokasi Pengiriman", style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: fp(_fontSizeRegular)
                    ))
                  ],
                ),
                SizedBox(height: wp(5)),
                Text("Rp. 95000", style: TextStyle(
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700,
                    fontSize: fp(_fontSizeRegular)
                ))
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: wp(30),
                  child: CupertinoButton(
                      padding: EdgeInsets.all(0),
                      color: Color.fromRGBO(221, 99, 73, 1),
                      onPressed: () => _onPress(),
                      borderRadius: BorderRadius.circular(wp(5)),
                      child: Text("Pesan", style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: fp(15)
                      ))
                  )
              )
          )
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:pasaryo/utils/responsive_dimension.dart';

class ShoppingItemHeaderWidget extends StatelessWidget{
  final String _marketName;
  final int _marketIconSize = 25;
  final int _sellerTitleFontSize = 14;

  ShoppingItemHeaderWidget(String marketName): _marketName = marketName;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Row(
      children: <Widget>[
        Image.asset("assets/icons/market.png",
            width: wp(_marketIconSize), height: wp(_marketIconSize)),
        SizedBox(width: wp(10)),
        Text(
          _marketName,
          style: TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.w600,
              fontSize: fp(_sellerTitleFontSize)),
        )
      ],
    );
  }
}
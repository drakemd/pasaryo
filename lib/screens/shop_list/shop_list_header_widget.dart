import 'package:flutter/cupertino.dart';
import 'package:pasaryo/utils/utils.dart';

class ShopListHeaderWidget extends StatelessWidget{
  final int _backIconSize = 15;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    double outerHorizontalPadding = ResponsiveDimensions.outerHorizontalPadding(context);

    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Image.asset("assets/icons/back.png", width: wp(_backIconSize), height: wp(_backIconSize)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(

          ),
        ),
        Expanded(
          flex: 1,
          child: Container(

          ),
        )
      ],
    );
  }
}
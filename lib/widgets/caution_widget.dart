import 'package:flutter/cupertino.dart';
import 'package:pasaryo/utils/utils.dart';

class CautionWidget extends StatelessWidget{
  final String _text;

  //styles
  final int _borderRadius = 10;
  final int _padding = 10;
  final Color _backgroundColor = Color.fromRGBO(245,239,239, 1);
  final int _fontSize = 12;

  CautionWidget({@required String text}): _text = text;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(wp(_borderRadius)),
          color: _backgroundColor,
        ),
        child: Padding(
            padding: EdgeInsets.all(wp(_padding)),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: new Image.asset("assets/icons/warning.png"),
                ),
                Expanded(
                  flex: 1,
                  child: Column(),
                ),
                Expanded(
                  flex: 18,
                  child: Text(
                    _text,
                    maxLines: 5,
                    style: TextStyle(
                        fontSize: fp(_fontSize),
                        fontFamily: "Raleway"
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
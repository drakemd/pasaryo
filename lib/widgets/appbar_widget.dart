import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/utils/utils.dart';

class MyAppBarWidget extends StatelessWidget {
  final double _statusBarHeight;
  final String _title;

  MyAppBarWidget(double statusBarHeight, {String title = ""})
      : _statusBarHeight = statusBarHeight,
        _title = title;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    double outerHorizontalPadding =
        ResponsiveDimensions.outerHorizontalPadding(context);

    return Container(
      height: wp(60 + _statusBarHeight.toInt()),
      child: Padding(
        padding: EdgeInsets.only(
            top: wp(_statusBarHeight.toInt() + 10),
            right: outerHorizontalPadding,
            left: outerHorizontalPadding),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: ModalRoute.of(context).settings.name != "/"
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          FlatButton(
                            child: Image.asset("assets/icons/back.png",
                                width: wp(15)),
                            onPressed: () => Navigator.pop(context),
                          )
                        ],
                      )
                    : SizedBox()),
            Expanded(
                flex: 1,
                child: Text(
                  _title,
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                      fontSize: fp(20)),
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset("assets/images/logo.png"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

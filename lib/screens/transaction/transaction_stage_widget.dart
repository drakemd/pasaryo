import 'package:flutter/cupertino.dart';
import 'package:pasaryo/utils/utils.dart';

import 'transaction_screen.dart';

class TransactionStageWidget extends StatelessWidget {
  final TransactionStageType _transactionStageType;
  final Function _onPress;

  final int _buttonWidth = 105;
  final int _buttonHeight = 30;
  final int _buttonBorderRadius = 10;
  final int _buttonShadowBlurRadius = 1;
  final int _buttonShadowSpreadRadius = 1;
  final Color _buttonShadowColor = Color.fromRGBO(0, 0, 0, 0.1);
  final Offset _buttonShadowOffset = Offset(0,0);
  final EdgeInsets _buttonPadding = EdgeInsets.all(0);
  final Color _buttonActive = Color.fromRGBO(221, 99, 73, 1);
  final Color _buttonInActive = Color.fromRGBO(0, 0, 0, 0.1);
  final int _buttonTextSize = 12;
  final int _buttonSpacing = 10;

  TransactionStageWidget(
      {@required TransactionStageType transactionStageType, Function onPress})
      : _transactionStageType = transactionStageType,
        _onPress = onPress;

  @override
  Widget build(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    double outerHorizontalPadding = ResponsiveDimensions.outerHorizontalPadding(context);

    return Row(
      children: <Widget>[
        SizedBox(width: outerHorizontalPadding),
        Container(
          width: wp(_buttonWidth),
          height: wp(_buttonHeight),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(wp(_buttonBorderRadius)),
              boxShadow: [
                BoxShadow(
                    color: _buttonShadowColor,
                    blurRadius: wp(_buttonShadowBlurRadius),
                    spreadRadius: wp(_buttonShadowSpreadRadius),
                    offset: _buttonShadowOffset)
              ]),
          child: CupertinoButton(
            padding: _buttonPadding,
            color: _transactionStageType == TransactionStageType.Processed
                ? _buttonActive
                : _buttonInActive,
            borderRadius: BorderRadius.circular(wp(_buttonBorderRadius)),
            onPressed: () => {_onPress(TransactionStageType.Processed)},
            child: Text(
              "Diproses",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: fp(_buttonTextSize),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: wp(_buttonSpacing)),
          width: wp(_buttonWidth),
          height: wp(_buttonHeight),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(wp(_buttonBorderRadius)),
              boxShadow: [
                BoxShadow(
                    color: _buttonShadowColor,
                    blurRadius: wp(_buttonShadowBlurRadius),
                    spreadRadius: wp(_buttonShadowSpreadRadius),
                    offset: _buttonShadowOffset)
              ]),
          child: CupertinoButton(
            padding: _buttonPadding,
            color: _transactionStageType == TransactionStageType.Sent
                ? _buttonActive
                : _buttonInActive,
            borderRadius: BorderRadius.circular(wp(_buttonBorderRadius)),
            onPressed: () => {_onPress(TransactionStageType.Sent)},
            child: Text(
              "Dikirim",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: fp(_buttonTextSize),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: wp(_buttonSpacing)),
          width: wp(_buttonWidth),
          height: wp(_buttonHeight),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(wp(_buttonBorderRadius)),
              boxShadow: [
                BoxShadow(
                    color: _buttonShadowColor,
                    blurRadius: wp(_buttonShadowBlurRadius),
                    spreadRadius: wp(_buttonShadowSpreadRadius),
                    offset: _buttonShadowOffset)
              ]),
          child: CupertinoButton(
            padding: _buttonPadding,
            color: _transactionStageType == TransactionStageType.Finished
                ? _buttonActive
                : _buttonInActive,
            borderRadius: BorderRadius.circular(wp(_buttonBorderRadius)),
            onPressed: () => {_onPress(TransactionStageType.Finished)},
            child: Text(
              "Selesai",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: fp(_buttonTextSize),
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}

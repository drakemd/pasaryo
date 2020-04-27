import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/screens/bag/bag_footer_widget.dart';
import 'package:pasaryo/screens/bag/shopping_list/shopping_list_widget.dart';
import 'package:pasaryo/screens/bag/order_confirmation_dialog.dart';
import 'package:pasaryo/utils/utils.dart';
import 'package:pasaryo/widgets/appbar_widget.dart';
import 'package:pasaryo/widgets/caution_widget.dart';

class BagScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BagState();
}

class BagState extends State<BagScreen>{
  int _topContainerHeight = 650;

  @override
  Widget build(BuildContext context) {
    var hp = (int dp) => ResponsiveDimensions.hp(dp.toDouble(), context);

    double outerHorizontalPadding = ResponsiveDimensions.outerHorizontalPadding(context);
    double _statusBarHeight = MediaQuery.of(context).padding.top;

    void _onCloseModal(){
      Navigator.of(context).pop();
    }

    void _onOrder(){
      Navigator.of(context).pop();
    }

    void _openConfirmationModal(){
      OrderConfirmationDialog.showOrderConfirmation(context, _onCloseModal, _onOrder);
    }

    return Column(
        children: <Widget>[
          Container(
            height: hp(_topContainerHeight),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  MyAppBarWidget(_statusBarHeight, title: "Keranjang"),
                  SizedBox(height: outerHorizontalPadding),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: outerHorizontalPadding),
                      child: CautionWidget(text: "kamu harus menyelesaikan pesanan jika ingin berbelanja di pasar lain ")
                  ),
                  ShoppingListWidget()
                ],
              ),
            )
          ),
          BagFooterWidget(onPress: _openConfirmationModal)
        ],
      );
  }
}
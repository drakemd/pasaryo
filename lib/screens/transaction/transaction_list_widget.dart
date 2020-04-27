import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/screens/screens.dart';
import 'package:pasaryo/utils/responsive_dimension.dart';

class TransactionListWidget extends StatelessWidget {
  final List<Transaction> _transactionList;
  final TransactionStageType _stageType;

  TransactionListWidget(
      {@required List<Transaction> transactionList,
      TransactionStageType stageType})
      : _transactionList = transactionList,
        _stageType = stageType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[_stageType == TransactionStageType.Sent ? getSentTransactionListWidget(context) : getProcessedTransactionListWidget(context)],
    );
  }

  Widget getProcessedTransactionListWidget(context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    double outerHorizontalPadding = ResponsiveDimensions.outerHorizontalPadding(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: outerHorizontalPadding, right: outerHorizontalPadding),
            child: Text(
              "Harga yang tertera sudah termasuk ongkos kirim",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontSize: fp(12)),
            ),
          ),
          ..._transactionList.map((transaction) {
            return new Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(210, 201, 221, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                          blurRadius: 1)
                    ]),
                margin: EdgeInsets.only(top: 13, left: outerHorizontalPadding),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                height: wp(70),
                width: wp(335),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            transaction.date,
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.w100,
                                fontSize: fp(13))
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: wp(6)),
                                  Text(
                                    "Jumlah Barang",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Raleway", fontSize: fp(10))
                                  ),
                                  SizedBox(height: wp(6)),
                                  Text("Pembayaran",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10)))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: wp(6)),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10))),
                                  SizedBox(height: wp(6)),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10)))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: wp(6)),
                                  Text(transaction.quantity.toString(),style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: fp(10)
                                  )),
                                  SizedBox(height: wp(6)),
                                  Text(transaction.paymentMethod, style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: fp(10)
                                  ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Text(transaction.marketName,
                              style:
                              TextStyle(fontFamily: "Raleway", fontSize: fp(13), fontWeight: FontWeight.w700)),
                          SizedBox(height: wp(15)),
                          Text("Rp. " + transaction.totalPayment.toString(),
                              style:
                              TextStyle(fontFamily: "Roboto", fontSize: fp(15), fontWeight: FontWeight.w700)),
                        ],
                      )
                    )
                  ],
                ));
          }).toList()
        ]);
  }

  Widget getSentTransactionListWidget(BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    double outerHorizontalPadding = ResponsiveDimensions.outerHorizontalPadding(context);

    return new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: outerHorizontalPadding),
            child: Text(
              "Harga yang tertera sudah termasuk ongkos kirim",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontSize: fp(12)),
            ),
          ),
          ..._transactionList.map((transaction) {
            return new Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(wp(10)),
                    color: Color.fromRGBO(210, 201, 221, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, wp(2)),
                          spreadRadius: wp(1),
                          blurRadius: wp(2))
                    ]),
                margin: EdgeInsets.only(top: wp(13), left: outerHorizontalPadding),
                padding: EdgeInsets.symmetric(horizontal: wp(12), vertical: wp(8)),
                height: wp(105),
                width: wp(335),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            transaction.date,
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.w100,
                                fontSize: fp(13)),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: wp(6)),
                                  Text(
                                    "Jumlah Barang",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Raleway", fontSize: fp(10)),
                                  ),
                                  SizedBox(height: wp(6)),
                                  Text("Pembayaran",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10))),
                                  SizedBox(height: wp(6)),
                                  Text(
                                    "Nama Driver",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Raleway", fontSize: fp(10)),
                                  ),
                                  SizedBox(height: wp(6)),
                                  Text("Nomor Polisi",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10)))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: wp(6)),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10))),
                                  SizedBox(height: wp(6)),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10))),
                                  SizedBox(height: wp(6)),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10))),
                                  SizedBox(height: wp(6)),
                                  Text(" : ",
                                      style: TextStyle(
                                          fontFamily: "Raleway", fontSize: fp(10)))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: wp(6)),
                                  Text(transaction.quantity.toString(),style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: fp(10)
                                  )),
                                  SizedBox(height: wp(6)),
                                  Text(transaction.paymentMethod, style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: fp(10)
                                  )),
                                  SizedBox(height: wp(6)),
                                  Text(transaction.driverName,style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: fp(10)
                                  )),
                                  SizedBox(height: wp(6)),
                                  Text(transaction.numberPlate, style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: fp(10)
                                  ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      thickness: 1,
                    ),
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: <Widget>[
                            Text(transaction.marketName,
                                style:
                                TextStyle(fontFamily: "Raleway", fontSize: fp(13), fontWeight: FontWeight.w700)),
                            SizedBox(height: wp(15)),
                            Text("Rp. " + transaction.totalPayment.toString(),
                                style:
                                TextStyle(fontFamily: "Roboto", fontSize: fp(15), fontWeight: FontWeight.w700)),
                          ],
                        )
                    )
                  ],
                ));
          }).toList()
        ]);
  }
}

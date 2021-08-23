import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/screens/transaction/transaction_list_widget.dart';
import 'package:pasaryo/screens/transaction/transaction_stage_widget.dart';
import 'package:pasaryo/widgets/appbar_widget.dart';

enum TransactionStageType { Processed, Sent, Finished }

class TransactionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TransactionState();
}

class TransactionState extends State<TransactionScreen> {
  TransactionStageType selected = TransactionStageType.Processed;
  final List<Transaction> _processedTransactions = [
    new Transaction("20 April 2020 08:32:05", "", 10, "CASH", "Pasar Higienis",
        96000, "xxxx", "Baharudin", "XXX 465", TransactionStageType.Processed),
    new Transaction("20 April 2020 08:32:05", "", 10, "CASH", "Pasar Rumput",
        96000, "xxxx", "Baharudin", "XXX 465", TransactionStageType.Processed),
    new Transaction("20 April 2020 08:32:05", "", 10, "CASH", "Pasar Agan",
        96000, "xxxx", "Baharudin", "XXX 465", TransactionStageType.Processed),
  ];
//  final List<Transaction> _sentTransactions = [];
//  final List<Transaction> _finishedTransactions = [];

  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;

    return Column(
      children: <Widget>[
        MyAppBarWidget(_statusBarHeight, title: "Transaksi"),
        SizedBox(height: 30),
        TransactionStageWidget(transactionStageType: selected, onPress: this.onPress),
        SizedBox(height: 20),
        TransactionListWidget(
            transactionList: _processedTransactions, stageType: this.selected)
      ],
    );
  }

  void onPress(TransactionStageType transactionStageType) {
    setState(() {
      this.selected = transactionStageType;
    });
  }
}

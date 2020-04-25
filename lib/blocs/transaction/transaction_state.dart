import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pasaryo/data/models/models.dart';

@immutable
abstract class TransactionState extends Equatable {
  TransactionState([List props = const []]);
}

class TransactionLoading extends TransactionState {
  @override
  String toString() => 'TransactionLoading';

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TransactionLoaded extends TransactionState {
  final List<Transaction> transactions;

  TransactionLoaded([this.transactions = const []]) : super([transactions]);

  @override
  String toString() => 'TransactionsLoaded { transactions: $transactions }';

  @override
  // TODO: implement props
  List<Object> get props => [transactions];
}

class TransactionNotLoaded extends TransactionState {
  @override
  String toString() => 'TransactionNotLoaded';

  @override
  // TODO: implement props
  List<Object> get props => [];
}
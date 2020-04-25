import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pasaryo/blocs/transaction/transaction.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/data/repositories/repositories.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionRepository transactionRepository;

  TransactionBloc({@required this.transactionRepository});

  @override
  TransactionState get initialState => TransactionLoading();

  @override
  Stream<TransactionState> mapEventToState(TransactionEvent event) async* {
    if (event is LoadTransactions) {
      yield* _mapLoadTransactionsToState();
    }
  }

  Stream<TransactionState> _mapLoadTransactionsToState() async* {
    try {
      final List<Transaction> transactions = await this.transactionRepository.loadTransactions();
      yield TransactionLoaded(transactions);
    } catch (_) {
      yield TransactionNotLoaded();
    }
  }
}
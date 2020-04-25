import 'package:pasaryo/data/models/models.dart';

class TransactionRepository {
  List<Transaction> _transactions;

  Future<List<Transaction>> loadTransactions() async {
    // simulate real data fetching
    await Future.delayed(Duration(milliseconds: 600));
    // store dummy data
    _transactions = [];

    return _transactions;
  }

  List<Transaction> get transactions => _transactions;
}
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TransactionEvent extends Equatable {
  TransactionEvent([List props = const []]);
}

class LoadTransactions extends TransactionEvent {
  @override
  String toString() => 'LoadTransactions';

  @override
  // TODO: implement props
  List<Object> get props => [];
}

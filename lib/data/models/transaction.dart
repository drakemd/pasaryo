import 'package:equatable/equatable.dart';
import 'package:pasaryo/utils/uuid.dart';

class Transaction extends Equatable{

  final String _id;
  final String _date;
  final String _address;
  final int _quantity;
  final String _paymentMethod;
  final String _marketName;
  final int _totalPayment;

  Transaction (
      String date,
      String address,
      int quantity,
      String paymentMethod,
      String marketName,
      int totalPayment,
      String id) :
        _id = id ?? Uuid().generateV4(),
        _date = date,
        _address = address,
        _quantity = quantity,
        _paymentMethod = paymentMethod,
        _marketName = marketName,
        _totalPayment = totalPayment;


  Transaction copyWith({
    String date,
    String address,
    int quantity,
    String paymentMethod,
    String marketName,
    int totalPayment,
    String id}) => Transaction(date, address, quantity, paymentMethod, marketName, totalPayment, id);

  @override
  List<Object> get props => [_id, _date, _address, _quantity, _paymentMethod, _marketName, _totalPayment];

  @override
  String toString() =>
      'Transaction { id: $_id, date: $_date, address: $_address,'
          ' quantity: $_quantity, paymentMethod: $_paymentMethod,'
          ' marketName: $_marketName, totalPayment: $_totalPayment }';
}
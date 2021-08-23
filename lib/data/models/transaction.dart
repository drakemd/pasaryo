import 'package:equatable/equatable.dart';
import 'package:pasaryo/screens/screens.dart';
import 'package:pasaryo/utils/uuid.dart';

class Transaction extends Equatable{

  final String id;
  final String date;
  final String address;
  final int quantity;
  final String paymentMethod;
  final String marketName;
  final int totalPayment;
  final String driverName;
  final String numberPlate;
  final TransactionStageType stageType;

  Transaction (
      String date,
      String address,
      int quantity,
      String paymentMethod,
      String marketName,
      int totalPayment,
      String id,
      String driverName,
      String numberPlate,
      TransactionStageType stageType
      ) :
        this.id = id ?? Uuid().generateV4(),
        this.date = date,
        this.address = address,
        this.quantity = quantity,
        this.paymentMethod = paymentMethod,
        this.marketName = marketName,
        this.totalPayment = totalPayment,
        this.driverName = driverName,
        this.numberPlate = numberPlate,
        this.stageType = stageType;


  Transaction copyWith({
    String date,
    String address,
    int quantity,
    String paymentMethod,
    String marketName,
    int totalPayment,
    String id,
    String driverName,
    String numberPlate,
    TransactionStageType stageType}) => Transaction(date, address, quantity, paymentMethod, marketName, totalPayment, id, driverName, numberPlate, stageType);

  @override
  List<Object> get props => [this.id, this.date, this.address, this.quantity, this.paymentMethod, this.marketName, this.totalPayment, this.driverName, this.numberPlate, this.stageType];

  @override
  String toString() =>
      'Transaction { id: ${this.id}, date: ${this.date}, address: ${this.address},'
          ' quantity: ${this.quantity}, paymentMethod: ${this.paymentMethod},'
          ' marketName: ${this.marketName}, totalPayment: ${this.totalPayment},'
          ' driverName: ${this.driverName}, numberPlate: ${this.numberPlate},'
          ' stageType: ${this.stageType} }';
}
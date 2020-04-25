import 'dart:ffi';

import 'package:equatable/equatable.dart';
import 'package:pasaryo/utils/uuid.dart';

class Market extends Equatable{

  final String _id;
  final String _name;
  final String _address;
  final Double _latitude;
  final Double _longitude;

  Market (String name, String address, Double latitude, Double longitude, String id) :
    _id = id ?? Uuid().generateV4(),
    _name = name,
    _address = address,
    _latitude = latitude,
    _longitude = longitude;


  Market copyWith({String name, String address, Double latitude, Double longitude, String id}) =>
      Market(name, address, latitude, longitude, id);

  @override
  List<Object> get props => [_id, _name, _address, _latitude, _longitude];

  @override
  String toString() =>
      'Market { id: $_id, name: $_name, address: $_address, latitude: $_latitude, longitude: $_longitude }';
}
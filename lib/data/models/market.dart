import 'package:equatable/equatable.dart';
import 'package:pasaryo/utils/uuid.dart';

class Market extends Equatable {
  final String id;
  final String name;
  final String address;
  final double latitude;
  final double longitude;
  final double distance;
  final String image;

  Market(String name, String address, double latitude, double longitude,
      String id, double distance, String image)
      : this.id = id ?? Uuid().generateV4(),
        this.name = name,
        this.address = address,
        this.latitude = latitude,
        this.longitude = longitude,
        this.distance = distance,
        this.image = image;

  Market copyWith(
          {String name,
          String address,
          double latitude,
          double longitude,
          String id,
          double distance,
          String image}) =>
      Market(name, address, latitude, longitude, id, distance, image);

  @override
  List<Object> get props =>
      [this.id, this.name, this.address, this.latitude, this.longitude];

  @override
  String toString() =>
      'Market { id: ${this.id}, name: ${this.name}, address: ${this.address}, '
      'latitude: ${this.latitude}, longitude: ${this.longitude}, '
      'distance: ${this.distance}, image: ${this.image}';
}

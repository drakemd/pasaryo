import 'package:equatable/equatable.dart';

class Product extends Equatable{
  final String name;
  final String description;
  final String image;
  final int price;

  Product(String name, String description, String image, int price)
      : this.name = name,
        this.description = description,
        this.image = image,
        this.price = price;

  @override
  List<Object> get props => [this.name, this.description, this.image, this.price];
}
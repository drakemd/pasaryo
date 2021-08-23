import 'package:pasaryo/data/models/product.dart';

class ShoppingItem extends Product {
  final int quantity;

  ShoppingItem(
      String name, String description, String image, int price, int quantity)
      : quantity = quantity,
        super(name, description, image, price);

  @override
  List<Object> get props => [this.name, this.description, this.image, this.price, this.quantity];
}


import 'package:ewaste/model/ProductModel.dart';



class CartModel {
  ProductModel product;
  int qty;
  double price;

  CartModel({
    required this.product,
    this.qty = 1,
    required this.price,
  });

  int get quantity => qty;
  double get totalPrice => price * qty;
}

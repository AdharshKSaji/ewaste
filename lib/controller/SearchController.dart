
import 'dart:math';
import 'package:ewaste/controller/CartController.dart';
import 'package:ewaste/model/FetchModel.dart';
import 'package:ewaste/model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ScratchController extends ChangeNotifier {
  ProductModel? selectedProduct;

  Future<void> fetchRandomProduct() async {
    final products = await fetchProducts();
    if (products.isNotEmpty) {
      selectedProduct = products[Random().nextInt(products.length)];
      notifyListeners();
    } else {
      throw Exception('No products available');
    }
  }

  void addProductToCart(BuildContext context) {
    if (selectedProduct != null) {
      final offerProduct = ProductModel(
        originalPrice: 0, 
        title: selectedProduct!.title,
        description: selectedProduct!.description,
        image: selectedProduct!.image,
        review: selectedProduct!.review,
        seller: selectedProduct!.seller,
        rate: selectedProduct!.rate,
        quantity: 0, 
        price: 0.0, 
      );
      context.read<CartController>().addToCart(offerProduct, qty: 1);
      notifyListeners();
    }
  }
}

import 'package:flutter/material.dart';// Import Product Model

class CartModel with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void updateQuantity(int index, int newQuantity) {
    if (newQuantity < 0) newQuantity = 0; // Prevent negative quantities
    _products[index].quantity = newQuantity;
    notifyListeners();
  }

  void removeProduct(int index) {
    _products.removeAt(index);
    notifyListeners();
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}
class Product {
  String name;
  String image;
  double price;
  int quantity;

  Product({required this.name, required this.image, required this.price, required this.quantity});
}
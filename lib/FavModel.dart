import 'package:flutter/material.dart';

class Product {
  final String cimage;
  final String name;
  final String price;
  final String rating;
  
  Product({
    required this.cimage,
    required this.name,
    required this.price,
    required this.rating,
  });
}

class FavoritesProvider with ChangeNotifier {
  List<Product> _favorites = [];

  List<Product> get favorites => _favorites;

  void addFavorite(Product product) {
    _favorites.add(product);
    notifyListeners();
  }

  void removeFavorite(Product product) {
    _favorites.remove(product);
    notifyListeners();
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/utils/constants.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void _toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  Future<void> toggleFavorite(String token) async {
    try {
      _toggleFavorite();

      final response = await http.patch(
        Uri.parse('${Constants.product_baseurl}/$id.json?auth=$token'),
        body: jsonEncode({"isFavorite": isFavorite}),
      );

      if (response.statusCode >= 400) {
        _toggleFavorite();
      }
    } catch (e) {
      _toggleFavorite();
    }
  }
}

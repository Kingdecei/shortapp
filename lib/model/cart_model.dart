 import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
     ["Affabg", "2500", "lib/images/affang.jpg", Colors.yellow],
     ["banana", "1700", "lib/images/banana.jpg", Colors.green],
     ["coke", "250", "lib/images/coke.jpg", Colors.green],
     ["shawama", "500", "lib/images/shawama.jpg", Colors.yellow],
  ];

  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
    void removeItemFromCart(int index) {
      _cartItems.removeAt(index);
      notifyListeners();
    }

    String calculateTotal() {
     double totalPrice = 0;
        for (int i = 0; i < _cartItems.length; i++) {
          totalPrice += double.parse(_cartItems[i][1]);
        }
        return totalPrice.toStringAsFixed(2);
      }
    }



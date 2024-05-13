import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier
{
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Heels", "4.00", "assets/image/15.jpg", Colors.green],
    ["Shirts", "2.50", "assets/image/15.jpg", Colors.yellow],
    ["blouse", "12.80", "assets/image/15.jpg", Colors.brown],
    ["shoes", "1.00", "assets/image/15.jpg", Colors.blue],
  ];

  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
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
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

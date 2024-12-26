import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [
      "Blueberry",
      "5.00",
      "lib/images/blueberry.jpg",
      const Color.fromARGB(255, 17, 51, 109)
    ],
    [
      "Banana",
      "5.00",
      "lib/images/bananas.jpg",
      const Color.fromARGB(255, 222, 247, 83)
    ],
    [
      "Milk",
      "5.00",
      "lib/images/milk.jpg",
      const Color.fromARGB(255, 255, 255, 255)
    ],
    [
      "Pineapple",
      "5.00",
      "lib/images/pineapple.jpg",
      const Color.fromARGB(255, 169, 241, 53)
    ],
    [
      "apple",
      "5.00",
      "lib/images/apple.jpg",
      const Color.fromARGB(255, 223, 58, 58)
    ],
    [
      "tomato",
      "5.00",
      "lib/images/tomatoes.jpg",
      const Color.fromARGB(255, 223, 58, 58)
    ],
  ];
  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //add items
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // cal total
  String caculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

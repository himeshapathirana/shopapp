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
      "lib/images/apple.png",
      const Color.fromARGB(255, 223, 58, 58)
    ],
  ];
  get shopItems => _shopItems;
}

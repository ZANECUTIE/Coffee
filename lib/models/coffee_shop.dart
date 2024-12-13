import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "75.00",
      imagePath: "lib/images/black.png",
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: "125.00",
      imagePath: "lib/images/latte.png",
    ),

    // espresso
    Coffee(
      name: 'Espresso',
      price: "120.00",
      imagePath: "lib/images/espresso.png",
    ),

    // iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "100.00",
      imagePath: "lib/images/iced_coffee.png",
    ),
    Coffee(
      name: 'Coffee & Donut',
      price: "150.00",
      imagePath: "lib/images/coffee_donut.png",
    ),
    Coffee(
      name: 'Milkshake coffee',
      price: "120.00",
      imagePath: "lib/images/milk_shake.png",
    ),
    Coffee(
      name: 'Caramel',
      price: "120.00",
      imagePath: "lib/images/Caramel.png",
    ),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}

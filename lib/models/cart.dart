import 'package:flutter/material.dart';
import 'package:shopping_app/models/shoe.dart';

class Cart extends ChangeNotifier {
//   list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'lib/images/Shoe/ZoomFreak.png'),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        description:
            'You\'ve got the hops and the speed-lace in shoe that enhance what you bring to the court ',
        imagePath: 'lib/images/Shoe/AirJordan.png'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        description:
            'A secure strap is suited for scoring binges and defensive ',
        imagePath: 'lib/images/Shoe/KDTreys.png'),
    Shoe(
        name: 'Kryie 6',
        price: '240',
        description:
            'Bouncy cushioning is paired with soft yet supported foam for reason  ',
        imagePath: 'lib/images/Shoe/Kyrie6.png'),
  ];

// list of items in the cart
  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

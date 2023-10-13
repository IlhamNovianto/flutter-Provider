import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Menu> _cart = [];
  List<Menu> get cart => _cart;

  void toggleMenu(Menu menu) {
    if (_cart.contains(menu)) {
      for (Menu element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(menu);
    }
    notifyListeners();
  }

  incrementQuantity(int index) => _cart[index].quantity++;
  decrementQuantity(int index) => _cart[index].quantity--;

  getTotalPrice() {
    double total = 0.0;
    for (Menu element in _cart) {
      total += element.price * element.quantity;
    }
    return total;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}

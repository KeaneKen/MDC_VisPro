import 'package:flutter/foundation.dart';
import 'product.dart';

class CartRepo extends ChangeNotifier {
  // Private list to hold the items in the cart.
  final List<Product> _items = [];

  // A read-only view of the items in the cart.
  List<Product> get items => List.unmodifiable(_items);

  // The current total price of all items.
  double get totalPrice {
    return _items.fold(0.0, (total, current) => total + current.price);
  }

  // Adds a product to the cart.
  void addItem(Product product) {
    _items.add(product);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  // Removes a specific product from the cart.
  void removeItem(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  // Removes all items from the cart.
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
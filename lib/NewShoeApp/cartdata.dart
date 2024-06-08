import 'ProductModel.dart'; // Import your ProductModel.dart file here

class Cart {
  List<Data> items = [];

  // Method to add an item to the cart
  void addToCart(Data item) {
    items.add(item);
  }

  // Method to remove an item from the cart
  void removeFromCart(Data item) {
    items.remove(item);
  }

  // Method to clear all items from the cart
  void clearCart() {
    items.clear();
  }

  // Method to get the total number of items in the cart
  int getTotalItems() {
    return items.length;
  }

  // Method to calculate the total price of items in the cart
  double getTotalPrice() {
    double totalPrice = 0;
    for (var item in items) {
      totalPrice += double.parse(item.extra!.replaceAll('\$', ''));
    }
    return totalPrice;
  }
}

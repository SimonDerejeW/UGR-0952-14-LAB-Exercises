void main() {
  
  final cart = <String, int>{};

  
  addItemToCart(cart, "Apples", 2);
  addItemToCart(cart, "Milk", 1);
  addItemToCart(cart, "Bread", 3);

  print("Cart items:");
  printCart(cart);

  
  final totalPrice = calculateTotalPrice(cart, {
    "Apples": 1.50, 
    "Milk": 3.25,
    "Bread": 2.00,
  });

  print("Total price: \$${totalPrice.toStringAsFixed(2)}");

  
  removeItemFromCart(cart, "Milk");
  print("\nRemoved Milk from the cart.");

  print("\nCart items after removal:");
  printCart(cart);
}

void addItemToCart(Map<String, int> cart, String productName, int quantity) {
  if (cart.containsKey(productName)) {
    cart[productName] = cart[productName]! + quantity; 
  } else {
    cart[productName] = quantity; 
  }
}

void removeItemFromCart(Map<String, int> cart, String productName) {
  if (cart.containsKey(productName)) {
    cart.remove(productName);
  } else {
    print("Item '$productName' not found in the cart.");
  }
}

double calculateTotalPrice(Map<String, int> cart, Map<String, double> productPrices) {
  double totalPrice = 0.0;
  for (final entry in cart.entries) {
    final productName = entry.key;
    final quantity = entry.value;
    final price = productPrices[productName] ?? 0.0; 
    totalPrice += price * quantity;
  }
  return totalPrice;
}

void printCart(Map<String, int> cart) {
  if (cart.isEmpty) {
    print("The cart is empty.");
  } else {
    for (final entry in cart.entries) {
      final productName = entry.key;
      final quantity = entry.value;
      print("$quantity x $productName");
    }
  }
}

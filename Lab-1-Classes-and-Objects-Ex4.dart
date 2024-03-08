class Product {
  final String name;
  final double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double calculateTotalCost() {
    return price * quantity;
  }
}



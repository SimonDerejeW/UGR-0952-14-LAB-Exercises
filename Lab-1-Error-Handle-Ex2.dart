double divide(double numerator, double denominator) {
  try {
    return numerator / denominator;
  } on UnsupportedError {
    
    print("Cannot divide by zero.");
    return double.infinity; 
  }
}

void main() {
  final result = divide(10, 2);
  print("Result: $result");

  final result2 = divide(10, 0);
  print("Result 2: $result2");
}

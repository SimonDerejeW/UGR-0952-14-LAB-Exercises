import 'dart:math';

void main() {
  final random = Random();

  
  final numbers = List.generate(10, (_) => random.nextInt(10)); 

  print("Original list with duplicates: $numbers");

  
  final uniqueNumbers = numbers.toSet();

  print("Unique numbers: $uniqueNumbers");
}

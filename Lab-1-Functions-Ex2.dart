import 'dart:io';
// No need for dart:math since we're not using any math functions

bool isPrime(int num) {
  // Handle non-positive numbers and 1 (not prime)
  if (num <= 1) {
    return false;
  }

  // Loop from 2 up to the square root of the number (efficient check)
  for (int i = 2; i < num; i++) { // Use Math.sqrt and convert to int
    if (num % i == 0) {
      return false; // Divisible by a number other than 1 and itself, not prime
    }
  }

  return true; // No divisors found, prime number
}

void main() {
  print("Enter number: ");
  final numString = stdin.readLineSync();

  if (numString != null && int.tryParse(numString) != null) {
    // Declare and initialize the number variable
    final number = int.parse(numString);

    final res = isPrime(number);
    print(res);
  } else {
    print("Invalid input. Please enter a number.");
  }
}

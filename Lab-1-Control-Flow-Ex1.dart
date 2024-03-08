import 'dart:io';

void main() {
  print("Enter a number: ");
  final numberString = stdin.readLineSync();

  if (numberString != null && double.tryParse(numberString) != null) {
    final number = double.parse(numberString);

    if (number % 2 == 0) {
      print("$number is Even");
    } else {
      print("$number is Odd");
    }
  } else {
    print("Invalid input. Please enter a number.");
  }
}

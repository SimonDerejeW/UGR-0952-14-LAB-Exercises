import 'dart:io';
String reversed(String str) {
  return str.split('').reversed.join('');
}

void main() {
  print("Enter a string: ");
  final inputString = stdin.readLineSync();

  if (inputString != null) {

    final reverseds = reversed(inputString);
    print("Reversed String: $reverseds");

  } else {
    print("Invalid input.");
  }
}

import 'dart:io';
void main() {
 print("Enter a number: ");
 final inputString = stdin.readLineSync();

 try {
   final number = int.parse(inputString!);
   print("You entered: $number");
 } on FormatException catch (e) {
   print("Invalid input: Please enter a valid integer.");
 }
}

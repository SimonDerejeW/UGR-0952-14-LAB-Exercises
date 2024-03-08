import 'dart:io';

int sum(int num1, int num2) {
  final result = num1 + num2;
  return result; 
}

void main() {
  print("Enter the first number: ");
  final num1String = stdin.readLineSync();

  if (num1String != null && int.tryParse(num1String) != null) {
    final num1 = int.parse(num1String);

    
    print("Enter the second number: ");
    final num2String = stdin.readLineSync();

    
    if (num2String != null && int.tryParse(num2String) != null) {
      final num2 = int.parse(num2String);

      final total = sum(num1, num2);

      
      print("The sum of $num1 and $num2 is $total.");
    } else {
      print("Invalid input for second number.");
    }
  } else {
    print("Invalid input for first number.");
  }
}

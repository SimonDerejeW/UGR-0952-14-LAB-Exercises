import 'dart:io';

void main() {
  print("Enter the first number: ");
  final num1String = stdin.readLineSync();


  if (num1String != null && num.tryParse(num1String) != null) {
    final num1 = num.parse(num1String);


    print("Enter the second number: ");
    final num2String = stdin.readLineSync();

    if (num2String != null && num.tryParse(num2String) != null) {
      final num2 = num.tryParse(num2String)!; 

      
      print("Enter the operator (+, -, *, /): ");
      final operatorString = stdin.readLineSync();

      if (operatorString != null) {
        final operator = operatorString.trim(); 

        switch (operator) {
          case '+':
            print("$num1 + $num2 = ${num1 + num2}");
            break;
          case '-':
            print("$num1 - $num2 = ${num1 - num2}");
            break;
          case '*':
            print("$num1 * $num2 = ${num1 * num2}");
            break;
          case '/':
            if (num2 == 0) {
              print("Error: Division by zero");
            } else {
              print("$num1 / $num2 = ${num1 / num2}");
            }
            break;
          default:
            print("Invalid operator");
        }
      } else {
        print("Invalid input for operator.");
      }
    } else {
      print("Invalid input for second number.");
    }
  } else {
    print("Invalid input for first number.");
  }
}

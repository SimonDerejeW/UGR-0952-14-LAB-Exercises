import 'dart:io';

void main() {

  print('Enter grade: ');
  int grade = int.parse(stdin.readLineSync()!);

  switch (grade ~/ 10) {
    case 9:
    case 10:
      print('A');
      break;
    case 8:
      print('B');
      break;
    case 7:
      print('C');
      break;
    case 6:
      print('D');
      break;
    default:
      print('F');
  }
}
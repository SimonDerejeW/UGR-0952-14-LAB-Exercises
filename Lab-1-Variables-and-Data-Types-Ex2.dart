import 'dart:io';
const double speedOfLight = 299792458; // meters per second

void main() {
  print("Enter the distance in meters: ");
  final distanceString = stdin.readLineSync();


  if (distanceString != null && double.tryParse(distanceString) != null) {
    final distance = double.parse(distanceString);

    final travelTime = distance / speedOfLight;

    print("It takes light approximately $travelTime seconds to travel $distance meters.");
  } else {
    print("Invalid input. Please enter a number for distance.");
  }
}
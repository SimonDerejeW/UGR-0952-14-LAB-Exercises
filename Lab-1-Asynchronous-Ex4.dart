import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// Replace with your OpenWeatherMap API key
const String apiKey = "YOUR_API_KEY";

const String baseUrl = "https://api.openweathermap.org/data/2.5/weather";

Future<Map<String, dynamic>> fetchWeatherData(String city) async {
  final url = Uri.parse("$baseUrl?q=$city&appid=$apiKey&units=metric");
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return data;
  } else {
    // Handle error (e.g., print an error message or throw an exception)
    throw Exception("Failed to fetch weather data: ${response.statusCode}");
  }
}

void main() async {
  print("Enter city name: ");
  final city = stdin.readLineSync();

  if (city != null) {
    try {
      final weatherData = await fetchWeatherData(city);
      final temp = weatherData['main']['temp'] as double;
      final weatherDescription = weatherData['weather'][0]['description'] as String;

      print("City: $city");
      print("Current Temperature: $temp °C");
      print("Weather: $weatherDescription");
    } on Exception catch (e) {
      print("Error: $e");
    }
  } else {
    print("Invalid input.");
  }
}

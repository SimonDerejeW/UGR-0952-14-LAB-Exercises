import 'dart:math';

Future<String> getRandomQuote() async {
  await Future.delayed(const Duration(seconds: 2));

  
  final quotes = [
    "The journey of a thousand miles begins with a single step.",
    "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.",
    "There is nothing impossible to him who will try.",
  ];

  
  final randomIndex = Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

void main() async {
  print("Fetching quote...");

  
  final quote = await getRandomQuote();

  print("Quote: $quote");
}

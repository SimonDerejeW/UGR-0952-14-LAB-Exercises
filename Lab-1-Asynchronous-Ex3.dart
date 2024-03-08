Future<List<String>> simulateDatabaseLoad() async {
  // Simulate a delay (replace with actual database call)
  await Future.delayed(const Duration(seconds: 2));

  // Sample data (replace with your actual data retrieval logic)
  final data = [
    "Item 1",
    "Item 2",
    "Item 3",
  ];

  return data;
}

void main() async {
  print("Loading data from database...");

  // Wait for the data using await before using it
  final data = await simulateDatabaseLoad();

  print("Data loaded:");
  for (final item in data) {
    print(item);
  }
}

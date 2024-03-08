import 'dart:io';

Future<String> readFile(String filePath) async {
  try {
    final file = File(filePath);
    final contents = await file.readAsString();
    return contents;
  } on FileSystemException catch (e) {
    if (e is FileNotFoundException) {
      print("Error: File not found - $filePath");
    } else if (e is AccessError) {
      print("Error: Insufficient permissions to access file - $filePath");
    } else {
      print("Error: An unexpected file system error occurred: $e");
    }
    return ""; // Or return null or another default value for error cases
  }
}

void main() async {
  print("Enter file path: ");
  final filePath = stdin.readLineSync();

  if (filePath != null) {
    final fileContents = await readFile(filePath);
    if (fileContents.isNotEmpty) {
      print("File contents:");
      print(fileContents);
    } else {
      print("Error reading file or file is empty.");
    }
  } else {
    print("Invalid input: Please enter a file path.");
  }
}

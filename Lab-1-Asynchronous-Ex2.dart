import 'dart:io';
import 'dart:http' as http;

// Replace with the actual URL of the file you want to download
const String downloadUrl = "https://example.com/file.txt";

Future<void> downloadFile(String url, String fileName) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final bytes = response.bodyBytes;
    final dir = Directory('downloads'); // Create a downloads directory
    await dir.create(recursive: true); // Create directory if it doesn't exist
    final file = File('${dir.path}/$fileName');
    await file.writeAsBytes(bytes);
    print("File downloaded successfully to: ${file.path}");
  } else {
    print("Download failed: Status code ${response.statusCode}");
  }
}

void main() async {
  final fileName = downloadUrl.split('/').last; // Extract filename from URL
  await downloadFile(downloadUrl, fileName);
}

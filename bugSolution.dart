```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print('Data fetched successfully: $jsonData'); // More descriptive message
    } else {
      // Provide context for the error
      final errorMessage = 'Failed to load data. Status code: ${response.statusCode}, body: ${response.body}';
      print(errorMessage); //Log the complete error message
      throw Exception(errorMessage); // Re-throw with context
    }
  } catch (e, stacktrace) {
    print('Error fetching data: $e\nStacktrace: $stacktrace'); // Include stacktrace for debugging
    //Consider rethrowing or handling based on the application needs
  }
}
```
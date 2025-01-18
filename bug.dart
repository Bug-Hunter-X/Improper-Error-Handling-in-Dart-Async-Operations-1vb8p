```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the JSON response
      final jsonData = jsonDecode(response.body);
      // Access and use data from jsonData
      print(jsonData['someKey']);
    } else {
      // Handle error responses
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Re-throw the exception for higher-level handling
    rethrow;
  }
}
```
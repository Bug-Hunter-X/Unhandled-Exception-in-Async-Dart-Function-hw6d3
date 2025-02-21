```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error status codes gracefully.  For example, return an error result instead of throwing an exception.
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle network errors specifically.
    print('Network error: $e');
    // Return a value indicating failure or handle the error in a way appropriate for your application.
    return; //Or throw a custom exception for higher level handling.
  } on FormatException catch(e) {
    //Handle JSON decoding errors
    print('JSON decoding error: $e');
    return; //Or throw a custom exception for higher level handling.
  } catch (e) {
    // Handle other exceptions.
    print('An unexpected error occurred: $e');
    // Handle the error appropriately for your application, such as displaying an error message to the user or logging the error.
    return; //Or throw a custom exception for higher level handling.
  }
}
```
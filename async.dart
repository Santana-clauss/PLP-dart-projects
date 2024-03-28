import 'dart:async';

void main() async {
  print("Fetching weather data....");
  String weather = await fetchweatherData();
  print("weather data:$weather");
}

//future function to get weather data
Future<String> fetchweatherData() {
  return Future.delayed(Duration(seconds: 3), () {
    return "Sunny";
  });
}

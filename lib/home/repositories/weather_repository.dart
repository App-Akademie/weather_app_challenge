import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/home/models/weather.dart';

class WeatherRepository {
  static const _apiKey = 'o1QhElHpIxgLopr6XslcAg==y8YUhbB7ZFWp8KVQ';
  Future<Weather> getWeather(String city) async {
    final url = 'https://api.api-ninjas.com/v1/weather?city=$city';
    final response =
        await http.get(Uri.parse(url), headers: {'X-Api-Key': _apiKey});
    if (response.statusCode == 200) {
      print('response: ${response.body}');
      return Weather.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception('Failed to load weather');
    }
  }
}

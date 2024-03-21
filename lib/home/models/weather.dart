import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Weather {
  final double temp;
  final double minTemp;

  final double maxTemp;

  Weather({
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return _$WeatherFromJson(json);
  }
}

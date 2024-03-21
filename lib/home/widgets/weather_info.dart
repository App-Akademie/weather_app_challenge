import 'package:flutter/material.dart';
import 'package:weather_app/home/models/weather.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';

class WeatherInfo extends StatefulWidget {
  const WeatherInfo({
    required this.city,
    super.key,
  });

  final String city;

  @override
  State<WeatherInfo> createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  late final Future<Weather> _request;

  @override
  void initState() {
    super.initState();
    _request = WeatherRepository().getWeather(widget.city);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            _request = WeatherRepository().getWeather(widget.city);
          });
        },
        notificationPredicate: (notification) {
          return notification.depth == 0;
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: FutureBuilder<Weather>(
              future: _request,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                return Column(
                  children: [
                    Text(widget.city,
                        style: Theme.of(context).textTheme.headlineMedium),
                    Text('${snapshot.data?.temp}°',
                        style: Theme.of(context).textTheme.headlineLarge),
                    Text(
                      'Cloudy',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('H:${snapshot.data?.maxTemp}°C '),
                        Text('L:${snapshot.data?.minTemp}°C')
                      ],
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}

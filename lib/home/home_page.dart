import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/home/widgets/weather_bottom_sheet.dart';
import 'package:weather_app/home/widgets/weather_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          SizedBox.expand(
            child: Assets.images.bg.image(),
          ),
          Positioned(
            bottom: 190,
            left: 0,
            right: 0,
            child: Center(
              child: Assets.images.house.image(
                width: 300,
              ),
            ),
          ),
          const Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: WeatherInfo(
              city: 'Stuttgart',
            ),
          ),
        ],
      ),
      bottomNavigationBar: const WeatherBottomSheet(),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherBottomSheet extends StatelessWidget {
  const WeatherBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(44),
          topRight: Radius.circular(44),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 24.0, sigmaY: 24.0),
          child: BottomSheet(
            dragHandleColor: Colors.black.withOpacity(0.3),
            dragHandleSize: const Size(68, 5),
            backgroundColor: Colors.black12.withOpacity(0.1),
            showDragHandle: true,
            enableDrag: false,
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 0.4,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(44),
                topRight: Radius.circular(44),
              ),
            ),
            onClosing: () {},
            builder: (context) {
              return const DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: TabBar(
                            tabs: [
                              Tab(text: 'Hourly Forecast'),
                              Tab(text: 'Weekly Forecast')
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Center(
                            child: Text('Hourly Forecast'),
                          ),
                          Center(
                            child: Text('Weekly Forecast'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

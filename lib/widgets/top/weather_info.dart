import 'package:flutter/material.dart';

import 'helpers/daylyInfo.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Container(
            height: 97,
            width: MediaQuery.sizeOf(context).width-24,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DayInfo(
                    sana: "16 yan",
                    kun: "Kecha",
                    path: "sun",
                    haroratlar: [-7, -18]),
                DayInfo(
                    sana: "17 yan",
                    kun: "Bugun",
                    path: "sun",
                    haroratlar: [-3, -12]),
                DayInfo(
                    sana: "18 yan",
                    kun: "Ertaga",
                    path: "sun",
                    haroratlar: [-1, -10]),
                DayInfo(
                    sana: "19 yan",
                    kun: "Payshanba",
                    path: "weather",
                    haroratlar: [-1, -9]),
                DayInfo(
                    sana: "20 yan",
                    kun: "Juma",
                    path: "weather",
                    haroratlar: [-2, -9]),
                DayInfo(
                    sana: "21 yan",
                    kun: "Shanba",
                    path: "sun",
                    haroratlar: [3, -2]),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 97,
              width: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.9)
                  ],
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
